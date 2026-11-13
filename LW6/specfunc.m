function result = specfunc(varargin)

if nargin == 1
    result = varargin{1}.^2;

elseif nargin == 2
    result = varargin{1}.^2 + varargin{2}.^3;

else
    error('Use one or two input arguments.')
end

end