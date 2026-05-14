    % Αρχικοποίηση της πιθανότητας θ σε ένα διάστημα [0, 1]
theta = 0:0.01:1;

% Αρχική προτεριόρικη κατανομή p(θ|D^0) (beta distribution)
prior = 4 .* theta.^3 .* (1 - theta);

% Αποτελέσματα ρίψεων: κ = κεφάλι, γ = γράμματα
results = ['κ', 'γ', 'κ', 'κ', 'γ', 'κ', 'γ', 'κ', 'γ', 'κ'];

% Μετρητές για το πόσα κεφάλια (h) και γράμματα (t) έχουν έρθει
h = 0; % Κεφάλια
t = 0; % Γράμματα

figure;
hold on;

% Υπολογισμός και σχεδίαση της posterior κατανομής για k=1,5,10
for k = 1:length(results)
    if results(k) == 'κ'
        h = h + 1;
    else
        t = t + 1;
    end
    
    % Υπολογισμός της posterior κατανομής
    posterior = theta.^(h+3) .* (1-theta).^t;
    
    % Κανονικοποίηση της posterior κατανομής
    posterior = posterior / trapz(theta, posterior);
    
    % Σχεδίαση της posterior κατανομής για τα ενδιάμεσα k
    if ismember(k, [1, 5, 10])
        plot(theta, posterior, 'DisplayName', sprintf('Μετά από %d ρίψεις', k));
    end
end

% Επισήμανση του διαγράμματος
xlabel('\Theta');
ylabel('p(\Theta | D^k)');
title('Posterior κατανομή για k=1,5,10 ρίψεις');
legend show;

hold off;
