/***************************************************************************
**                                                                        **
**  Polyphone, a soundfont editor                                         **
**  Copyright (C) 2013-2017 Davy Triponney                                **
**                2014      Andrea Celani                                 **
**                                                                        **
**  This program is free software: you can redistribute it and/or modify  **
**  it under the terms of the GNU General Public License as published by  **
**  the Free Software Foundation, either version 3 of the License, or     **
**  (at your option) any later version.                                   **
**                                                                        **
**  This program is distributed in the hope that it will be useful,       **
**  but WITHOUT ANY WARRANTY; without even the implied warranty of        **
**  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the         **
**  GNU General Public License for more details.                          **
**                                                                        **
**  You should have received a copy of the GNU General Public License     **
**  along with this program.  If not, see http://www.gnu.org/licenses/.   **
**                                                                        **
****************************************************************************
**           Author: Davy Triponney                                       **
**  Website/Contact: http://polyphone-soundfonts.com                      **
**             Date: 01.01.2013                                           **
***************************************************************************/

#ifndef TRANSLATIONSYSTEM_H
#define TRANSLATIONSYSTEM_H

#include <QString>
#include <QMap>
class QApplication;
class QTranslator;

class TranslationManager
{
public:
    /// Translate the application according to the default locale or the overwritten local in QSettings
    static void translate(QApplication * a);

    /// Get all languages, key is two letters (fr, en, ...), value is the language native name
    static QMap<QString, QString> getLanguages();

private:
    // Singleton
    TranslationManager();
    ~TranslationManager();
    static TranslationManager * getInstance();
    static TranslationManager * _instance;

    void addTranslations(QString path);
    static const QString DEFAULT_LANGUAGE;
    static const QString RESOURCE_PATH;
    static const QString TRANSLATION_DIRECTORY;
    QTranslator * _translator;
    QMap<QString, QString> _languages;
};

#endif // TRANSLATIONSYSTEM_H
