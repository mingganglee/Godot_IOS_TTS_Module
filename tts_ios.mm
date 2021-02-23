#import "tts_ios.h"
#import <AVFoundation/AVFoundation.h>

TTSIOS::TTSIOS()
{
}

TTSIOS::~TTSIOS()
{
}

void TTSIOS::speak(const String& text) {
    NSString *ns_text = [NSString stringWithUTF8String:text.utf8().ptr()];

    AVSpeechSynthesizer *synthesizer = [[AVSpeechSynthesizer alloc]init];
    AVSpeechUtterance *utterance = [AVSpeechUtterance speechUtteranceWithString:ns_text];
    [utterance setRate:0.5f];
    utterance.voice = [AVSpeechSynthesisVoice voiceWithLanguage:@"zh-CN"];
    [synthesizer speakUtterance:utterance];
}

void TTSIOS::_bind_methods()
{
    ClassDB::bind_method(D_METHOD("speak"), &TTSIOS::speak);
}
