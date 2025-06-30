clear variables;
clc;
close all;

function varargout = func(varargin)
    n_inputs = length(varargin);
    n_outputs = nargout;
   
    if n_inputs ~= 2 * n_outputs
        varargout = cell(1, n_outputs);
        for k = 1:n_outputs
            varargout{k} = NaN; 
        end
        return;
    end

    for k = 1:n_outputs
        v1 = varargin{2*k - 1};  
        v2 = varargin{2*k};      
        varargout{k} = v1 * v2;  
    end
end
