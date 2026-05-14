P = [0.25, 0.75; 0.4, 0.6];  % Πίνακας πιθανοτήτων μετάβασης
N = 1000;                    % Αριθμός επαναλήψεων προσομοίωσης
total_cost = 0;              

% Καταστάσεις και κόστη για κάθε κατάσταση
states = [1, 2];             
cost_state1 = [0, 1];        
cost_state2 = [3, 0];        

current_state = 1;           
for i = 1:N
    if current_state == 1
        transition = rand < P(1,1);                % Απόφαση για τη μετάβαση
        total_cost = total_cost + cost_state1(transition + 1); % Ενημέρωση ολικού κόστους
        current_state = 2 - transition;            % Ενημέρωση της κατάστασης
    else
        transition = rand < P(2,1);
        total_cost = total_cost + cost_state2(transition + 1); % Ενημέρωση ολικού κόστους
        current_state = transition + 1;            % Ενημέρωση της κατάστασης
    end
end
% Εμφάνιση του ολικού κόστους
fprintf('Το ολικό κόστος από την προσομοίωση είναι: %d\n', total_cost);
