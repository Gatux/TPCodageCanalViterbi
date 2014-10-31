function [ c ] = codconv( m, g )

    % Calcul de la matrice g�n�ratrice G, ainsi que de la m�moire M du
    % codeur
    [G, M] = paramconv(g);
    
    % La taille 
    len = max([length(G(1,:)) + length(m) - 1, length(G(1,:)), length(m)]);
    c = zeros(length(g), len);
    
    for i=1:length(g)
      c(i,:) = mod(conv(m, G(i,:)), 2);
    end
    
    c = reshape(c, 1, length(c)*length(c(:,1)))
end

