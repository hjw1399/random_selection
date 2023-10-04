clc;clear;
main_name = ["name1"
            "name2"
            "name3"
            "name4"
            "name5"
            "name6"
            "name7"
            "name8"
            "name9"
            "name10"];
sub_name = ["a"
            "b"
            "c"
            "d"
            "e"
            "f"
            "g"
            "h"
            "i"
            "j"]; % optional

% randinx_of_duty = randperm(length(sub_name));
randidx_of_subname = 1:length(sub_name);
randidx_of_main_name = randperm(length(main_name));

for i = 1:length(main_name)
    if length(main_name) <= length(sub_name)
%         disp(duty((i)) + ": " + people(randinx_of_people(i)))
        disp(sub_name(randidx_of_subname(i)) + ": " + main_name(randidx_of_main_name(i)))
    else
        disp(main_name(randidx_of_main_name(i)))
    end
%     disp()
end

%% test for that it is uniform distributions
clc;
count = zeros(10,1);
for i = 1:1e6
    randidx_of_main_name = randperm(length(main_name));
    for j = 1:10
        if(randidx_of_main_name(j) == 1) % name1's distribution
            count(j) = count(j) + 1;
            break;
        end
    end
end
    