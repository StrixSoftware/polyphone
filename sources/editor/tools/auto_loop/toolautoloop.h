#ifndef TOOLAUTOLOOP_H
#define TOOLAUTOLOOP_H

#include "abstracttooliterating.h"
#include <QMutex>
#include <QObject>

class ToolAutoLoop: public AbstractToolIterating
{
public:
    ToolAutoLoop() : AbstractToolIterating(elementSmpl) {}

    /// Icon, label and category displayed to the user to describe the tool
    QString getIconName() const override
    {
        return ":/tool/loop.svg";
    }

    QString getLabel() const override
    {
        return trUtf8("Bouclage automatique");
    }

    QString getCategory() const override
    {
        return trUtf8("Échantillon");
    }

    /// Internal identifier
    QString getIdentifier() const override
    {
        return "smpl:autoLoop";
    }

    /// Method executed before the iterating process
    void beforeProcess() override;

    /// Process an element
    void process(SoundfontManager * sm, EltID id, AbstractToolParameters * parameters) override;

protected:
    /// Get the warning to display after the tool is run
    QString getWarning() override;

private:
    QStringList _samplesNotLooped;
    QMutex _mutex;
};

#endif // TOOLAUTOLOOP_H