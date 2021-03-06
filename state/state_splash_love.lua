State_Splash_Love = {};

function State_Splash_Love:enter()
  local splash = require "lib/o-ten-one";
  self.splash = splash();
  self.splash.onDone = self.onDone;
end

function State_Splash_Love:onDone()
  GameState.switch(State_Title);
end

function State_Splash_Love:keypressed(key, unicode)
  self.splash:skip();
end

function State_Splash_Love:gamepadpressed(joystick, button)
  self.splash:skip();
end

function State_Splash_Love:update(dt)
  self.splash:update(dt);
end

function State_Splash_Love:draw()
	CANVAS:renderTo(function()
    love.graphics.clear();
		self.splash:draw();
  end);

  love.graphics.setColor(255, 255, 255);
  love.graphics.draw(CANVAS, CANVAS_OFFSET_X, CANVAS_OFFSET_Y, 0, CANVAS_SCALE, CANVAS_SCALE);
end