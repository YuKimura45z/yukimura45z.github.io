h = 600;
H = 1750;

R = 25;

[x, n] = meshgrid(1:1000, 1 : 100);

p = mining_probability(h, H);
sp = catching_up_probability(n, 0, p);

selfish_mining_condition = sp .* (R + x) - p .* R;

surf(selfish_mining_condition, 'EdgeColor', 'none');
xlabel('transaction amount');
ylabel('confirmation');
zlabel('incentive');
colorbar;