% Συνάρτηση διάκρισης για την κανονική κατανομή
function g = discriminantFunction(x, mu, Sigma, P)
    % x: διάνυσμα σημείου προς ταξινόμηση
    % mu: διάνυσμα μέσου της κατανομής
    % Sigma: πίνακας συνδιασποράς
    % P: πιθανότητα της κλάσης (προ-εκτίμηση)
    
    d = length(mu); % διαστάσεις του διανύσματος
    term1 = -0.5 * (x - mu)' * inv(Sigma) * (x - mu);
    term2 = -d/2 * log(2 * pi);
    term3 = -0.5 * log(det(Sigma));
    term4 = log(P);
    
    g = term1 + term2 + term3 + term4;
end

% Ευκλείδεια απόσταση μεταξύ δύο σημείων
function d = euclideanDistance(x1, x2)
    % x1: διάνυσμα του πρώτου σημείου
    % x2: διάνυσμα του δεύτερου σημείου
    
    d = sqrt(sum((x1 - x2).^2));
end

% Απόσταση Mahalanobis
function d = mahalanobisDistance(x, mu, Sigma)
    % x: διάνυσμα του σημείου
    % mu: διάνυσμα μέσου του συνόλου
    % Sigma: πίνακας συνδιασποράς του συνόλου
    
    d = sqrt((x - mu)' * inv(Sigma) * (x - mu));
end
