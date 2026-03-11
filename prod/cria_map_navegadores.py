# -*- coding: utf-8 -*-
"""
Script SIMPLIFICADO para gerar map_navegadores.json

USO:
    python gerar_map_simples.py

Este script:
1. Lê med/tuplas_ordenadas.txt
2. Gera med/map_navegadores.json
3. Opcionalmente gera template de navegadores_json.py
"""

import json
import os
import re


def main():
    """Função principal."""
    
    # Caminhos fixos
    caminho_tuplas = "med/tuplas_ordenadas.txt"
    caminho_saida_json = "med/map_navegadores.json"
    
    # Verificar se arquivo existe
    if not os.path.exists(caminho_tuplas):
        print(f"\n❌ Arquivo não encontrado: {caminho_tuplas}")
        print("\nPor favor, certifique-se que o arquivo existe no caminho correto.")
        return
    
    # 1. LER ARQUIVO
    print(f"\n📖 Lendo: {caminho_tuplas}\n")
    
    mapeamento = {}
    linhas_processadas = 0
    linhas_erro = 0
    
    with open(caminho_tuplas, 'r', encoding='utf-8') as f:
        for idx, linha in enumerate(f, 1):
            linha = linha.strip()
            
            if not linha:  # Pular linhas vazias
                continue
            
            # Parse: numero1 - tupla - numero2
            match = re.match(r'^(\d+)\s*-\s*(.+?)\s*-\s*(\d+)$', linha)
            
            if match:
                numero1 = int(match.group(1))
                nome_funcao = f"navegador_id{numero1}"
                mapeamento[numero1] = nome_funcao
                
                linhas_processadas += 1
                print(f"✅ Linha {idx:3d}: {numero1:3d} → {nome_funcao}")
            else:
                linhas_erro += 1
                print(f"⚠️  Linha {idx:3d}: Formato inválido - {linha[:50]}...")
    
    print(f"\n📊 Resumo:")
    print(f"   • Linhas processadas: {linhas_processadas}")
    print(f"   • Linhas com erro: {linhas_erro}")
    print(f"   • Navegadores mapeados: {len(mapeamento)}")
    
    if not mapeamento:
        print("\n❌ Nenhum navegador foi mapeado. Verifique o formato do arquivo.")
        return
    
    # 2. SALVAR JSON
    print(f"\n💾 Salvando: {caminho_saida_json}")
    
    # Criar diretório se não existir
    os.makedirs(os.path.dirname(caminho_saida_json), exist_ok=True)
    
    # Converter para formato JSON (chaves string)
    mapeamento_json = {str(k): v for k, v in mapeamento.items()}
    
    with open(caminho_saida_json, 'w', encoding='utf-8') as f:
        json.dump(mapeamento_json, f, indent=2, ensure_ascii=False)
    
    print(f"✅ JSON salvo com {len(mapeamento_json)} entradas")

# Executar
if __name__ == "__main__":
    try:
        main()
    except KeyboardInterrupt:
        print("\n\n⚠️ Processo cancelado pelo usuário.")
    except Exception as e:
        print(f"\n❌ Erro: {e}")
        import traceback
        traceback.print_exc()