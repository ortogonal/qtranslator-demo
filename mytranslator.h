#pragma once

#include <QTranslator>
#include <QVector>

class MyTranslator : public QTranslator
{
public:
    explicit MyTranslator(QObject *parent = nullptr);

    // QTranslator interface
    QString translate(const char *context,
                      const char *sourceText,
                      const char *disambiguation,
                      int n) const override;

private:
    QVector<QChar> vowels;

};
