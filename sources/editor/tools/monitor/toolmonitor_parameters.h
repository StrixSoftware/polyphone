#ifndef TOOLMONITOR_PARAMETERS_H
#define TOOLMONITOR_PARAMETERS_H

#include "abstracttoolparameters.h"

class ToolMonitor_parameters: public AbstractToolParameters
{
public:
    /// Load the configuration from the ini file
    void loadConfiguration() override;

    /// Save the configuration in the ini file
    void saveConfiguration() override;
    
    bool getInstAttribute() { return _instAttribute; }
    void setInstAttribute(bool instAttribute) { _instAttribute = instAttribute; }
    bool getPrstAttribute() { return _prstAttribute; }
    void setPrstAttribute(bool prstAttribute) { _prstAttribute = prstAttribute; }

    bool getInstLog() { return _instLog; }
    void setInstLog(bool instLog) { _instLog = instLog; }
    bool getPrstLog() { return _prstLog; }
    void setPrstLog(bool prstLog) { _prstLog = prstLog; }
private:
    int _instAttribute, _prstAttribute;
    bool _instLog, _prstLog;
};

#endif // TOOLMONITOR_PARAMETERS_H