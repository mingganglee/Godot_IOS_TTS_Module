#include <core/version_generated.gen.h>
#include <core/class_db.h>
#include <core/engine.h>

#include "register_types.h"
#include "tts_ios.h"

void register_tts_ios_types() {
#if defined(__APPLE__)
    Engine::get_singleton()->add_singleton(Engine::Singleton("TTSIOS", memnew(TTSIOS)));
#endif
}

void unregister_tts_ios_types() {
}
