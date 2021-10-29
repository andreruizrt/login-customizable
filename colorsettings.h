#ifndef COLORSETTINGS_H
#define COLORSETTINGS_H

#include <QObject>

class ColorSettings : public QObject {
    Q_OBJECT
    Q_PROPERTY( QString bgColor READ bgColor WRITE _bgColor NOTIFY colors_changed )
public:
    explicit ColorSettings( QObject* parent = 0 );
    int loadingColorConfiguration();
    int savingColorConfiguration();

    void setBgColor( const QString& color );
    void setButtonTextColor( const QString& color );
    void setButtonBgColor( const QString& color );
    void setLabelHeadingColor( const QString& color );
    void setLabelContentColor( const QString& color );
signals:
    void colors_changed();

public slots:

private:
    QString _bgColor;
    QString _buttonTextColor;
    QString _buttonBgColor;
    QString _labelHeadingColor;
    QString _labelContentColor;
};

#endif // COLORSETTINGS_H
