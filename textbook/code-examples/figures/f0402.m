if ( exist('ncdblock') == 0 )
  disp('Nonlinear Control Design Toolbox required to run.');
else
  wn = 1
  zeta = input('Input initial zeta for system to start at >> ')
  disp('Open up the Nonlinear Control Design box, and start the optimization');
  disp('Upon Completion of the optimization, zeta will have a new value.');
  disp('This value can be displayed at the MATLAB command window prompt.');
  disp('Variations of this optimizations can easily be run by modifying the');
  disp('constraint features (either manually or by: Option, Step Response).');
  disp(' ');
  disp('A negative Max{g} indicates success in meeting constraints.');
  disp(' ');
  disp('Press any key to continue.'); pause;
  eval('f0402n');
end;
