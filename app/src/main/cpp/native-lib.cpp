#include <jni.h>
#include <string>

extern "C" JNIEXPORT jstring JNICALL
Java_com_example_mynativeapplication_MainActivity_stringFromJNI (
    JNIEnv* env, jobject /* this */)
{
    std::string hello = "Meu texto escrito em com C++";
    return env->NewStringUTF (hello.c_str());
}