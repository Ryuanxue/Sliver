   #include <stddef.h>
   #include <stdio.h>
wchar_t * getenv(wchar_t *s)
{
  static wchar_t dataBuffer[100] = L"";
  //return s;
   if (fgetws(dataBuffer ,100, stdin) != 0)
   {
   	return dataBuffer;
   }
   else
   {
   return NULL;
   }
}
