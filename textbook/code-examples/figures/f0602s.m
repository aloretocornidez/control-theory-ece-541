function [ret,x0,str]=f0602S(t,x,u,flag);
%F0602S is the M-file description of the SIMULINK system named F0602S.
%       The block-diagram can be displayed by typing: F0602S.
%
%       SYS=F0602S(T,X,U,FLAG) returns depending on FLAG certain
%	system values given time point, T, current state vector, X,
%	and input vector, U.
%	FLAG is used to indicate the type of output to be returned in SYS.
%
%       Setting FLAG=1 causes F0602S to return state derivatives, FLAG=2
%	discrete states, FLAG=3 system outputs and FLAG=4 next sample
%	time. For more information and other options see SFUNC.
%
%       Calling F0602S with a FLAG of zero:
%       [SIZES]=F0602S([],[],[],0),  returns a vector, SIZES, which
%	contains the sizes of the state vector and other parameters.
%		SIZES(1) number of states
%		SIZES(2) number of discrete states
%		SIZES(3) number of outputs
%		SIZES(4) number of inputs.
%	For the definition of other parameters in SIZES, see SFUNC.
%	See also, TRIM, LINMOD, LINSIM, EULER, RK23, RK45, ADAMS, GEAR.

% Note: This M-file is only used for saving graphical information;
%       after the model is loaded into memory an internal model
%       representation is used.

% the system will take on the name of this mfile:
sys = mfilename;
new_system(sys)
simver(1.2)
if(0 == (nargin + nargout))
     set_param(sys,'Location',[8,46,455,285])
     open_system(sys)
end;
set_param(sys,'algorithm',		'RK-45')
set_param(sys,'Start time',	'0.0')
set_param(sys,'Stop time',		'20')
set_param(sys,'Min step size',	'0.001')
set_param(sys,'Max step size',	'10')
set_param(sys,'Relative error','1e-3')
set_param(sys,'Return vars',	'')

add_block('built-in/Step Fcn',[sys,'/','Step Fcn'])
set_param([sys,'/','Step Fcn'],...
		'Time','.001',...
		'position',[65,100,100,130])

add_block('built-in/Transfer Fcn',[sys,'/','S1 '])
set_param([sys,'/','S1 '],...
		'Denominator','[1 0.4 1]',...
		'position',[165,21,230,59])

add_block('built-in/Transfer Fcn',[sys,'/','S2'])
set_param([sys,'/','S2'],...
		'Denominator','[1 -0.6 150]',...
		'position',[170,96,230,134])

add_block('built-in/Mux',[sys,'/','Mux'])
set_param([sys,'/','Mux'],...
		'inputs','3',...
		'position',[320,99,350,131])

add_block('built-in/Scope',[sys,'/','Output'])
set_param([sys,'/','Output'],...
		'Vgain','3.000000',...
		'Hgain','20.000000',...
		'Vmax','6.000000',...
		'Hmax','40.000000',...
		'Window',[43,305,639,480])
open_system([sys,'/','Output'])
set_param([sys,'/','Output'],...
		'position',[390,102,410,128])

add_block('built-in/Transfer Fcn',[sys,'/','S3'])
set_param([sys,'/','S3'],...
		'Denominator','[1 0 1]',...
		'position',[170,176,235,214])
add_line(sys,[235,40;275,40;275,105;310,105])
add_line(sys,[235,115;310,115])
add_line(sys,[240,195;275,195;275,125;310,125])
add_line(sys,[105,115;160,115])
add_line(sys,[105,115;125,115;125,195;160,195])
add_line(sys,[105,115;125,115;125,40;155,40])
add_line(sys,[355,115;380,115])

% Return any arguments.
if (nargin | nargout)
	% Must use feval here to access system in memory
	if (nargin > 3)
		if (flag == 0)
			eval(['[ret,x0,str]=',sys,'(t,x,u,flag);'])
		else
			eval(['ret =', sys,'(t,x,u,flag);'])
		end
	else
		[ret,x0,str] = feval(sys);
	end
end
