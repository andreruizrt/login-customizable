#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQuickStyle>

int main( int argc, char* argv[] ) {
    QCoreApplication::setAttribute( Qt::AA_EnableHighDpiScaling );
    QQuickStyle::setStyle( "UserCustom" );
    QGuiApplication app( argc, argv );

    QQmlApplicationEngine engine;
    engine.load( QUrl( QLatin1String( "qrc:/main.qml" ) ) );

    return app.exec();
}
