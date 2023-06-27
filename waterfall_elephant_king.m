% Artisan Avenue

% Program to simulate the Artisan Avenue system

% Enter number of intersections
intersection_no = input('Enter the number of intersections: ');

% Initialize the intersection variables
intersection_pos = zeros(1,intersection_no);
intersection_traffic_light_state = ones(1,intersection_no);

% Enter number of cars
car_no = input('Enter the total number of cars: ');

% Initialize the car variables
car_pos = zeros(1,car_no);

for i=1:intersection_no
    % Set the position of the intersection
    intersection_pos(i) = i * 5;
    
    % Set the state of the traffic light
    intersection_traffic_light_state(i) = 0;
end

for j=1:car_no
    % Set the position of the car
    car_pos(j) = j * 10;
end

% Simulation loop 
while true
    for i=1:intersection_no
        % Change the state of the traffic light
        if(intersection_traffic_light_state(i) == 0)
            intersection_traffic_light_state(i) = 1;
        else
            intersection_traffic_light_state(i) = 0;
        end
        
        % Update the position of the car
        for j=1:car_no
            if(car_pos(j) < intersection_pos(i) && intersection_traffic_light_state(i) == 0)
                car_pos(j) = car_pos(j) + 1;
            end
        end
    end
    
    % Display the positions of the cars
    for j=1:car_no
        fprintf('Car %d: %d\n', j, car_pos(j));
    end
    
    % Stop the simulation
    break;
end