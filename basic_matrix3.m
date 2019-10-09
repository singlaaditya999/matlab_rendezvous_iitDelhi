a = [1 2 3 4 6 4 3 4 5]; %First, let's create a simple vector with 9 elements called a.
b = a + 2; % Now let's add 2 to each element of our vector, a, and store the result in a new vector.
plot(b,'*'); %Let's plot the result of our vector addition with grid lines.
xlabel('Sample #');
ylabel('Pounds');
axis([0 10 0 10]);