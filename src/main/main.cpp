#include <QApplication>
#include <QQmlApplicationEngine>
#include <QResource>
#include <QDebug>
#include <QDir>
#include <QFile>

int main(int argc, char *argv[])
{
    QApplication app(argc, argv);

    // 调试：检查资源文件是否注册
    qDebug() << "Registered resource files:";
    for (const QString &file : QDir(":/").entryList()) {
        qDebug() << "  " << file;
    }

    // 检查特定路径
    if (QFile::exists(":/qml/main.qml")) {
        qDebug() << "Found: :/qml/main.qml";
    } else if (QFile::exists(":/main.qml")) {
        qDebug() << "Found: :/main.qml";
    } else {
        qDebug() << "No QML files found in resources";
    }

    QQmlApplicationEngine engine;

    // 尝试加载
    if (QFile::exists(":/qml/main.qml")) {
        engine.load(QUrl("qrc:/qml/main.qml"));
    } else {
        engine.load(QUrl("qrc:/main.qml"));
    }

    if (engine.rootObjects().isEmpty()){
        qDebug() << "Failed to load QML file";
        return -1;
    }

    return app.exec();
}
