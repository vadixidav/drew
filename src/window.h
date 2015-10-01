#ifndef DREW_WINDOW_H
#define DREW_WINDOW_H

#include "SDL2/SDL.h"
#include <string>

class Window {
public:
    SDL_Window *window;
    
    Window(const std::string &name, unsigned width, unsigned height);
    ~Window();
    //Returns true if there was an event
    bool pollEvent(SDL_Event &event);
    //Flip the window surface
    void flip();
};

#endif // DREW_WINDOW_H

