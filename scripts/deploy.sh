#!/data/data/com.termux/files/usr/bin/bash

echo "🔨 Buildando APK..."
cd ~/libgdxandroid
./gradlew android:assembleDebug

if [ $? -eq 0 ]; then
    echo "✅ Build concluído!"
    echo "📦 Copiando para Downloads..."
    
    APK_NAME="MeuJogo-$(date +%Y%m%d-%H%M).apk"
    cp android/build/outputs/apk/debug/android-debug.apk ~/storage/downloads/$APK_NAME
    
    echo "✅ APK copiado: $APK_NAME"
    echo "🚀 Abrindo instalador..."
    echo ""
    
    termux-open ~/storage/downloads/$APK_NAME
    
    echo "✨ Deploy completo!"
else
    echo ""
    echo "❌ Build falhou!"
    echo "💡 Tente executar 'clean' primeiro"
fi
