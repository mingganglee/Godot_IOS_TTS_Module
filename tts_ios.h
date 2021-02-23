#ifndef TTSIOS_H
#define TTSIOS_H

#include "core/object.h"

class TTSIOS : public Object {
    GDCLASS(TTSIOS, Object);

    static void _bind_methods();
public:
    TTSIOS();
    ~TTSIOS();

    void speak(const String& text);
};

#endif
