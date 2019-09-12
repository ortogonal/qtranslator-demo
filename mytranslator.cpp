#include "mytranslator.h"

MyTranslator::MyTranslator(QObject *parent)
    : QTranslator(parent)
{
    vowels << 'a' << 'e' << 'i' << 'o' << 'u' << 'y';
}

QString MyTranslator::translate(const char *context,
                                const char *sourceText,
                                const char *disambiguation,
                                int n) const
{
    Q_UNUSED(context)
    Q_UNUSED(disambiguation)
    Q_UNUSED(n)

    if (sourceText == nullptr)
        return QString();

    QString srcString = QString::fromLatin1(sourceText);
    QString outString;

    for (const auto &c : srcString) {
        if (vowels.contains(c.toLower()) == false && c != ' ') {
            outString += c;
            if (c.isUpper()) {
                outString += 'O';
            } else {
                outString += 'o';
            }
            outString += c;
        } else {
            outString += c;
        }
    }

    return outString;
}
