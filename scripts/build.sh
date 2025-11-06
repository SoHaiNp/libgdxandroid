#!/data/data/com.termux/files/usr/bin/bash

echo "🔨 Buildando APK..."
cd ~/libgdxandroid
./gradlew android:assembleDebug

if [ $? -eq 0 ]; then
    echo ""
    echo "✅ Build concluído com sucesso!"
    echo "📦 APK: android/build/outputs/apk/debug/android-debug.apk"
    echo ""
    echo "💡 Use 'deploy' para copiar e instalar automaticamente"
else
    echo ""
    echo "❌ Build falhou!"
    echo "💡 Tente executar 'clean' primeiro"
fi
