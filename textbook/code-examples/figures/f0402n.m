function [ret,x0,str]=f0402n(t,x,u,flag);
%F0402N	is the M-file description of the SIMULINK system named F0402N.
%	The block-diagram can be displayed by typing: F0402N.
%
%	SYS=F0402N(T,X,U,FLAG) returns depending on FLAG certain
%	system values given time point, T, current state vector, X,
%	and input vector, U.
%	FLAG is used to indicate the type of output to be returned in SYS.
%
%	Setting FLAG=1 causes F0402N to return state derivatives, FLAG=2
%	discrete states, FLAG=3 system outputs and FLAG=4 next sample
%	time. For more information and other options see SFUNC.
%
%	Calling F0402N with a FLAG of zero:
%	[SIZES]=F0402N([],[],[],0),  returns a vector, SIZES, which
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
     set_param(sys,'Location',[4,309,385,460])
     open_system(sys)
end;
set_param(sys,'algorithm',		'RK-23')
set_param(sys,'Start time',	'0.0')
set_param(sys,'Stop time',		'20')
set_param(sys,'Min step size',	'0.0001')
set_param(sys,'Max step size',	'1')
set_param(sys,'Relative error','1e-3')
set_param(sys,'Return vars',	'')

add_block('built-in/Step Fcn',[sys,'/','R(s)'])
set_param([sys,'/','R(s)'],...
		'Time','0',...
		'position',[20,30,40,50])

add_block('built-in/Transfer Fcn',[sys,'/',['Characteristic Equation',13,'for Second Order Systems']])
set_param([sys,'/',['Characteristic Equation',13,'for Second Order Systems']],...
		'Numerator','[wn^2]',...
		'Denominator','[1 2*zeta*wn wn^2]',...
		'position',[70,21,180,59])

add_block('built-in/Scope',[sys,'/','C(s)'])
set_param([sys,'/','C(s)'],...
		'Vgain','1.500000',...
		'Hgain','20.000000',...
		'Vmax','3.000000',...
		'Hmax','40.000000',...
		'Window',[404,269,640,480])
open_system([sys,'/','C(s)'])
set_param([sys,'/','C(s)'],...
		'position',[305,27,325,53])

add_block('built-in/Outport',[sys,'/','Outport'])
set_param([sys,'/','Outport'],...
		'hide name',0,...
		'Drop Shadow',4,...
		'Mask Display','plot(t,y); 1',...
		'Mask Type','Optimization outport',...
		'Mask Dialogue','eval(''optblock'')')
set_param([sys,'/','Outport'],...
		'Mask Translate','t=1:10; y=[-.5 1.5 .6 1.3 .8 1.1 .95 1.02 .99 1];',...
		'Mask Help','',...
		'position',[285,78,340,132])
add_line(sys,[185,40;295,40])
add_line(sys,[45,40;60,40])
add_line(sys,[185,40;225,40;225,105;275,105])

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
