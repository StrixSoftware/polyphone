#ifndef SF2PDTAPART_GEN_H
#define SF2PDTAPART_GEN_H

#include "sf2basetypes.h"
class QDataStream;

class Sf2PdtaPart_gen
{
public:
    Sf2PdtaPart_gen();

    bool _isValid;

    quint16Reversed _sfGenOper;
    quint16Reversed _genAmount;
};

// Extension methods for QDataStream to serialize / deserialize
QDataStream & operator >> (QDataStream &in, Sf2PdtaPart_gen &gen);
QDataStream & operator << (QDataStream &out, const Sf2PdtaPart_gen &gen);

#endif // SF2PDTAPART_GEN_H