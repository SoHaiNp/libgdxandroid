#!/data/data/com.termux/files/usr/bin/bash

echo "🧹 Limpando builds anteriores..."
cd ~/libgdxandroid
./gradlew clean

if [ $? -eq 0 ]; then
    echo "✅ Limpeza concluída!"
    echo ""
    echo "💡 Agora você pode executar 'build' ou 'deploy'"
else
    echo "❌ Erro na limpeza!"
fi
