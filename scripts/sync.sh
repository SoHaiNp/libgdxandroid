#!/data/data/com.termux/files/usr/bin/bash

cd ~/libgdxandroid

echo "⬇️  Baixando atualizações do GitHub..."
git pull

if [ $? -ne 0 ]; then
    echo "❌ Erro ao baixar! Verifique conflitos."
    exit 1
fi

echo ""
echo "📝 Digite a mensagem do commit (ou pressione Enter para apenas baixar):"
read commit_msg

if [ -n "$commit_msg" ]; then
    echo ""
    echo "📦 Adicionando arquivos..."
    git add .
    
    echo "💾 Criando commit..."
    git commit -m "$commit_msg"
    
    echo "⬆️  Enviando para GitHub..."
    git push
    
    if [ $? -eq 0 ]; then
        echo ""
        echo "✅ Sincronizado com sucesso!"
    else
        echo ""
        echo "❌ Erro ao enviar!"
    fi
else
    echo ""
    echo "⏭️  Apenas baixado. Sem alterações enviadas."
fi
