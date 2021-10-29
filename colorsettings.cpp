#include "colorsettings.h"

ColorSettings::ColorSettings( QObject* parent ) :
    QObject( parent ) {}

void ColorSettings::setBgColor( const QString& color ) {
    if ( _bgColor != color ) {
        _bgColor = color;
    }
    emit colors_changed();
}

void ColorSettings::setButtonTextColor( const QString& color ) {
    if ( _buttonTextColor != color ) {
        _buttonTextColor = color;
    }
    emit colors_changed();
}

void ColorSettings::setButtonBgColor( const QString& color ) {
    if ( _buttonBgColor != color ) {
        _buttonTextColor = color;
    }
    emit colors_changed();
}

void ColorSettings::setLabelHeadingColor( const QString& color ) {
    if ( _labelHeadingColor != color ) {
        _labelHeadingColor = color;
    }
    emit colors_changed();
}

void ColorSettings::setLabelContentColor( const QString& color ) {
    if ( _labelContentColor != color ) {
        _labelContentColor = color;
    }
    emit colors_changed();
}
