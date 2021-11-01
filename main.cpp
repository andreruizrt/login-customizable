#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQuickStyle>
#include <QSettings>

int main( int argc, char* argv[] ) {
    QCoreApplication::setAttribute( Qt::AA_EnableHighDpiScaling );
    QQuickStyle::setStyle( "Material" );
    QGuiApplication app( argc, argv );

    QQmlApplicationEngine engine;
    engine.load( QUrl( QLatin1String( "qrc:/main.qml" ) ) );

    return app.exec();
}
