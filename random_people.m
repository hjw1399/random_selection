clc;clear;
main_name = ["1"
             "2"
             "3"
             "4"];
sub_name = ["a"
            "b"
            "c"
            "d"]; % optional

randinx_of_duty = randperm(length(sub_name));
randinx_of_people = randperm(length(main_name));

for i = 1:length(main_name)
    if length(main_name) <= length(sub_name)
%         disp(duty((i)) + ": " + people(randinx_of_people(i)))
        disp(sub_name(randinx_of_duty(i)) + ": " + main_name(randinx_of_people(i)))
    else
        disp(main_name(randinx_of_people(i)))
    end
%     disp()
end