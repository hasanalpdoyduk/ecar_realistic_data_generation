classdef Alp_Doyduk_EE101_TermProject4 < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        UIFigure                   matlab.ui.Figure
        GridLayout                 matlab.ui.container.GridLayout
        WhenthebuttonsarepressedanexceltableiscreatedwiththedataLabel  matlab.ui.control.Label
        ChargeStationTypesLabel    matlab.ui.control.Label
        kWhAC105TLperminuteButton  matlab.ui.control.Button
        seven_AC                   matlab.ui.control.Button
        kWhDC71TLperminuteButton   matlab.ui.control.Button
        dc50                       matlab.ui.control.Button
        UIAxes2                    matlab.ui.control.UIAxes
        UIAxes3                    matlab.ui.control.UIAxes
        UIAxes4                    matlab.ui.control.UIAxes
        UIAxes6                    matlab.ui.control.UIAxes
        UIAxes5                    matlab.ui.control.UIAxes
        UIAxes7                    matlab.ui.control.UIAxes
        UIAxes                     matlab.ui.control.UIAxes
    end

    % Callbacks that handle component events
    methods (Access = private)

        % Button pushed function: kWhAC105TLperminuteButton
        function kWhAC105TLperminuteButtonPushed(app, event)
            num_vehicle = 100;
            data1 = zeros(num_vehicle, 11);
            for i = 1:num_vehicle
                data1(i,1) = ceil(100*(betarnd(3,4))); 
            end

            brand = ["Tesla Model 3","Hyundai Kona Electric","BMW Ix3","Reanult Zoe","Mini Copper SE","Mercedes Benz EQC","Jaguar I-Pace"];
            a = "Tesla";
            for i = 1: num_vehicle
                x = rand();
                if x <= 0.05
                    data1(i,2) = 7;
                elseif x <= 0.4
                    data1(i,2) = 4;
                elseif x <= 0.45
                    data1(i,2) = 5;
                elseif x <= 0.55
                    data1(i,2) = 6;
                elseif x <= 0.75
                    data1(i,2) = 2;
                elseif x <= 0.80
                    data1(i,2) = 3;
                else 
                    data1(i,2) = 1;
                end
             end


            for i = 1:num_vehicle
                x = betarnd(2,3);
                y = betarnd(2,3);
                while y < x
                    y = rand();
           
                end
                data1(i,3) = ceil(10*x+10);
                data1(i,5) = ceil(10*y+10);
              
            end

            for i = 1:num_vehicle
                x = betarnd(2,3);
                time_arrival_minute = ceil(x*60);
                data1(i,4) = time_arrival_minute;
            end



            for i = 1:num_vehicle
                x = betarnd(2,3);
                time_departure_minute = ceil(x*60);
                data1(i,6) = time_departure_minute;
                  
    
                if data1(i,3) == data1(i,5)
                    time_departure_minute = data1(i,6)+data1(i,4)
                    time_departure_minute = ceil(y*60);
                    
                    data1(i,6) = time_departure_minute;
                else
                    data1(i,6) = time_departure_minute;
                end    
            
            
            end


            for i = 1:num_vehicle
                x = rand();
                if x > 0.5
                    data1(i,7) = 1;
                else
                    data1(i,7) = 0;
                end
            end 
           
            for i = 1:num_vehicle


                if data1(i,7) == 1
                     
                    x = rand() 
                    data1(i,10) = ceil(x*(100-data1(i,1)))
                     
                
                else
                    data1(i,10) = 0;
                end
            end


            for i = 1:num_vehicle
                if data1(i,2)==1
                    SOC = data1(i,1);
                    Total_capacity = 63.2;
                    Empty_capacity = ((100-SOC)/100)*Total_capacity;
                    data1(i,8)=Empty_capacity
                    data1(i,11) = Total_capacity*data1(i,10)/100/(22)*60
                elseif data1(i,2)==2
                    SOC = data1(i,1);
                    Total_capacity = 64;
                    Empty_capacity = ((100-SOC)/100)*Total_capacity;
                    data1(i,8)=Empty_capacity
                    data1(i,11) = Total_capacity*data1(i,10)/100/(22)*60
                elseif data1(i,2)==3
                    SOC = data1(i,1);
                    Total_capacity = 111.5;
                    Empty_capacity = ((100-SOC)/100)*Total_capacity;
                    data1(i,8)=Empty_capacity
                    data1(i,11) = Total_capacity*data1(i,10)/100/(22)*60
                elseif data1(i,2)==4
                    SOC = data1(i,1);
                    Total_capacity = 52;
                    Empty_capacity = ((100-SOC)/100)*Total_capacity;
                    data1(i,8)=Empty_capacity
                    data1(i,11) = Total_capacity*data1(i,10)/100/(22)*60
                elseif data1(i,2)==5
                    SOC = data1(i,1);
                    Total_capacity = 32;
                    Empty_capacity = ((100-SOC)/100)*Total_capacity;
                    data1(i,8)=Empty_capacity
                    data1(i,11) = Total_capacity*data1(i,10)/100/(22)*60% dakikaaaaaaaaaaaaaaaaaaaa
                elseif data1(i,2)==6
                    SOC = data1(i,1);
                    Total_capacity = 80;
                    Empty_capacity = ((100-SOC)/100)*Total_capacity;
                    data1(i,8)=Empty_capacity
                    data1(i,11) = Total_capacity*data1(i,10)/100/(22)*60
                elseif data1(i,2)==7
                    SOC = data1(i,1);
                    Total_capacity = 90;
                    Empty_capacity = ((100-SOC)/100)*Total_capacity;
                    data1(i,8)=Empty_capacity
                    data1(i,11) = Total_capacity*data1(i,10)/100/(22)*60
                end
            end

            
            for i = 1:num_vehicle
                if data1(i,2)==1
                    data1(i,9) = Total_capacity*data1(i,10)/100/(22)*60*1.05
                elseif data1(i,2)==2
                    data1(i,9) = Total_capacity*data1(i,10)/100/(22)*60*1.05
                elseif data1(i,2)==3
                    data1(i,9) = Total_capacity*data1(i,10)/100/(22)*60*1.05
                elseif data1(i,2)==4
                    data1(i,9) = Total_capacity*data1(i,10)/100/(22)*60*1.05
                elseif data1(i,2)==5
                    data1(i,9) = Total_capacity*data1(i,10)/100/(22)*60*1.05
                elseif data1(i,2)==6
                    data1(i,9) = Total_capacity*data1(i,10)/100/(22)*60*1.05
                elseif data1(i,2)==7
                    data1(i,9) = Total_capacity*data1(i,10)/100/(22)*60*1.05
                end
            end


            %plotting
            histogram(app.UIAxes,  data1(:,1));
            histogram(app.UIAxes2, data1(:,2));
            histogram(app.UIAxes3, data1(:,3));
            histogram(app.UIAxes4, data1(:,5));
            histogram(app.UIAxes5, data1(:,8));
            histogram(app.UIAxes6, data1(:,9));
            histogram(app.UIAxes7, data1(:,11));

            xlswrite("EE101_TP4_29-May-2022",data1)


        end

        % Button pushed function: dc50
        function dc50Pushed(app, event)
            num_vehicle = 100;
            data2 = zeros(num_vehicle, 11);
            for i = 1:num_vehicle
                data2(i,1) = ceil(100*(betarnd(3,4))); 
            end

            brand = ["Tesla Model 3","Hyundai Kona Electric","BMW Ix3","Reanult Zoe","Mini Copper SE","Mercedes Benz EQC","Jaguar I-Pace"];
            a = "Tesla";
            for i = 1: num_vehicle
                x = rand();
                if x <= 0.05
                    data2(i,2) = 7;
                elseif x <= 0.4
                    data2(i,2) = 4;
                elseif x <= 0.45
                    data2(i,2) = 5;
                elseif x <= 0.55
                    data2(i,2) = 6;
                elseif x <= 0.75
                    data2(i,2) = 2;
                elseif x <= 0.80
                    data2(i,2) = 3;
                else 
                    data2(i,2) = 1;
                end
             end


            for i = 1:num_vehicle
                x = betarnd(2,3);
                y = betarnd(2,3);
                while y < x
                    y = rand();
           
                end
                data2(i,3) = ceil(10*x+10);
                data2(i,5) = ceil(10*y+10);
              
            end

            for i = 1:num_vehicle
                x = betarnd(2,3);
                time_arrival_minute = ceil(x*60);
                data2(i,4) = time_arrival_minute;
            end



            for i = 1:num_vehicle
                x = betarnd(2,3);
                time_departure_minute = ceil(x*60);
                data2(i,6) = time_departure_minute;
                  
    
                if data2(i,3) == data2(i,5)
                    time_departure_minute = data2(i,6)+data2(i,4)
                    time_departure_minute = ceil(y*60);
                    
                    data2(i,6) = time_departure_minute;
                else
                    data2(i,6) = time_departure_minute;
                end    
            
            
            end


            for i = 1:num_vehicle
                x = rand();
                if x > 0.5
                    data2(i,7) = 1;
                else
                    data2(i,7) = 0;
                end
            end 
           
            for i = 1:num_vehicle


                if data2(i,7) == 1

                     
                    x = rand() 
                    data2(i,10) = ceil(x*(100-data2(i,1)))
                     
                
                 else
                    data2(i,10) = 0;
                 end
            end


            for i = 1:num_vehicle
                if data2(i,2)==1
                    SOC = data2(i,1);
                    Total_capacity = 63.2;
                    Empty_capacity = ((100-SOC)/100)*Total_capacity;
                    data2(i,8)=Empty_capacity
                    data2(i,11) = Total_capacity*data2(i,10)/100/(50)*60
                elseif data2(i,2)==2
                    SOC = data2(i,1);
                    Total_capacity = 64;
                    Empty_capacity = ((100-SOC)/100)*Total_capacity;
                    data2(i,8)=Empty_capacity
                    data2(i,11) = Total_capacity*data2(i,10)/100/(50)*60
                elseif data2(i,2)==3
                    SOC = data2(i,1);
                    Total_capacity = 111.5;
                    Empty_capacity = ((100-SOC)/100)*Total_capacity;
                    data2(i,8)=Empty_capacity
                    data2(i,11) = Total_capacity*data2(i,10)/100/(50)*60
                elseif data2(i,2)==4
                    SOC = data2(i,1);
                    Total_capacity = 52;
                    Empty_capacity = ((100-SOC)/100)*Total_capacity;
                    data2(i,8)=Empty_capacity
                    data2(i,11) = Total_capacity*data2(i,10)/100/(50)*60
                elseif data2(i,2)==5
                    SOC = data2(i,1);
                    Total_capacity = 32;
                    Empty_capacity = ((100-SOC)/100)*Total_capacity;
                    data2(i,8)=Empty_capacity
                    data2(i,11) = Total_capacity*data2(i,10)/100/(50)*60% dakikaaaaaaaaaaaaaaaaaaaa
                elseif data2(i,2)==6
                    SOC = data2(i,1);
                    Total_capacity = 80;
                    Empty_capacity = ((100-SOC)/100)*Total_capacity;
                    data2(i,8)=Empty_capacity
                    data2(i,11) = Total_capacity*data2(i,10)/100/(50)*60
                elseif data2(i,2)==7
                    SOC = data2(i,1);
                    Total_capacity = 90;
                    Empty_capacity = ((100-SOC)/100)*Total_capacity;
                    data2(i,8)=Empty_capacity
                    data2(i,11) = Total_capacity*data2(i,10)/100/(50)*60
                end
            end

            
            for i = 1:num_vehicle
                if data2(i,2)==1
                    data2(i,9) = Total_capacity*data2(i,10)/100/(50)*60*5.3
                elseif data2(i,2)==2
                    data2(i,9) = Total_capacity*data2(i,10)/100/(50)*60*5.3
                elseif data2(i,2)==3
                    data2(i,9) = Total_capacity*data2(i,10)/100/(50)*60*5.3
                elseif data2(i,2)==4
                    data2(i,9) = Total_capacity*data2(i,10)/100/(50)*60*5.3
                elseif data2(i,2)==5
                    data2(i,9) = Total_capacity*data2(i,10)/100/(50)*60*5.3
                elseif data2(i,2)==6
                    data2(i,9) = Total_capacity*data2(i,10)/100/(50)*60*5.3
                elseif data2(i,2)==7
                    data2(i,9) = Total_capacity*data2(i,10)/100/(50)*60*5.3
                end
            end


            %plotting
            histogram(app.UIAxes,  data2(:,1));
            histogram(app.UIAxes2, data2(:,2));
            histogram(app.UIAxes3, data2(:,3));
            histogram(app.UIAxes4, data2(:,5));
            histogram(app.UIAxes5, data2(:,8));
            histogram(app.UIAxes6, data2(:,9));
            histogram(app.UIAxes7, data2(:,11)); 

            xlswrite("EE101_TP4_29-May-2022(2)",data2)
        end

        % Button pushed function: seven_AC
        function seven_ACPushed(app, event)
            num_vehicle = 100;
            data3 = zeros(num_vehicle, 11);
            for i = 1:num_vehicle
                data3(i,1) = ceil(100*(betarnd(3,4))); 
            end

            brand = ["Tesla Model 3","Hyundai Kona Electric","BMW Ix3","Reanult Zoe","Mini Copper SE","Mercedes Benz EQC","Jaguar I-Pace"];
            a = "Tesla";
            for i = 1: num_vehicle
                x = rand();
                if x <= 0.05
                    data3(i,2) = 7;
                elseif x <= 0.4
                    data3(i,2) = 4;
                elseif x <= 0.45
                    data3(i,2) = 5;
                elseif x <= 0.55
                    data3(i,2) = 6;
                elseif x <= 0.75
                    data3(i,2) = 2;
                elseif x <= 0.80
                    data3(i,2) = 3;
                else 
                    data3(i,2) = 1;
                end
            end


            for i = 1:num_vehicle
                x = betarnd(2,3);
                y = betarnd(2,3);
                while y < x
                    y = rand();
           
                end
                data3(i,3) = ceil(10*x+10);
                data3(i,5) = ceil(10*y+10);
              
            end

            for i = 1:num_vehicle
                x = betarnd(2,3);
                time_arrival_minute = ceil(x*60);
                data3(i,4) = time_arrival_minute;
            end



            for i = 1:num_vehicle
                x = betarnd(2,3);
                time_departure_minute = ceil(x*60);
                data3(i,6) = time_departure_minute;
                  
    
                if data3(i,3) == data3(i,5)
                    time_departure_minute = data3(i,6)+data3(i,4)
                    time_departure_minute = ceil(y*60);
                    
                    data3(i,6) = time_departure_minute;
                else
                    data3(i,6) = time_departure_minute;
                end    
            
            
            end


            for i = 1:num_vehicle
                x = rand();
                if x > 0.5
                    data3(i,7) = 1;
                else
                    data3(i,7) = 0;
                end
            end 
           
            for i = 1:num_vehicle


                if data3(i,7) == 1
                     
                    x = rand() 
                    data3(i,10) = ceil(x*(100-data3(i,1)))
                     
                
                else
                    data3(i,10) = 0;
                end
            end


            for i = 1:num_vehicle
                if data3(i,2)==1
                    SOC = data3(i,1);
                    Total_capacity = 63.2;
                    Empty_capacity = ((100-SOC)/100)*Total_capacity;
                    data3(i,8)=Empty_capacity
                    data3(i,11) = Total_capacity*data3(i,10)/100/(7.4)*60
                elseif data3(i,2)==2
                    SOC = data3(i,1);
                    Total_capacity = 64;
                    Empty_capacity = ((100-SOC)/100)*Total_capacity;
                    data3(i,8)=Empty_capacity
                    data3(i,11) = Total_capacity*data3(i,10)/100/(7.4)*60
                elseif data3(i,2)==3
                    SOC = data3(i,1);
                    Total_capacity = 111.5;
                    Empty_capacity = ((100-SOC)/100)*Total_capacity;
                    data3(i,8)=Empty_capacity
                    data3(i,11) = Total_capacity*data3(i,10)/100/(7.4)*60
                elseif data3(i,2)==4
                    SOC = data3(i,1);
                    Total_capacity = 52;
                    Empty_capacity = ((100-SOC)/100)*Total_capacity;
                    data3(i,8)=Empty_capacity
                    data3(i,11) = Total_capacity*data3(i,10)/100/(7.4)*60
                elseif data3(i,2)==5
                    SOC = data3(i,1);
                    Total_capacity = 32;
                    Empty_capacity = ((100-SOC)/100)*Total_capacity;
                    data3(i,8)=Empty_capacity
                    data3(i,11) = Total_capacity*data3(i,10)/100/(7.4)*60% dakikaaaaaaaaaaaaaaaaaaaa
                elseif data3(i,2)==6
                    SOC = data3(i,1);
                    Total_capacity = 80;
                    Empty_capacity = ((100-SOC)/100)*Total_capacity;
                    data3(i,8)=Empty_capacity
                    data3(i,11) = Total_capacity*data3(i,10)/100/(7.4)*60
                elseif data3(i,2)==7
                    SOC = data3(i,1);
                    Total_capacity = 90;
                    Empty_capacity = ((100-SOC)/100)*Total_capacity;
                    data3(i,8)=Empty_capacity
                    data3(i,11) = Total_capacity*data3(i,10)/100/(7.4)*60
                end
            end

            
            for i = 1:num_vehicle
                if data3(i,2)==1
                    data3(i,9) = Total_capacity*data3(i,10)/100/(7.4)*60*0.77
                elseif data3(i,2)==2
                    data3(i,9) = Total_capacity*data3(i,10)/100/(7.4)*60*0.77
                elseif data3(i,2)==3
                    data3(i,9) = Total_capacity*data3(i,10)/100/(7.4)*60*0.77
                elseif data3(i,2)==4
                    data3(i,9) = Total_capacity*data3(i,10)/100/(7.4)*60*0.77
                elseif data3(i,2)==5
                    data3(i,9) = Total_capacity*data3(i,10)/100/(7.4)*60*0.77
                elseif data3(i,2)==6
                    data3(i,9) = Total_capacity*data3(i,10)/100/(7.4)*60*0.77
                elseif data3(i,2)==7
                    data3(i,9) = Total_capacity*data3(i,10)/100/(7.4)*60*0.77
                end
            end


            %plotting
            histogram(app.UIAxes,  data3(:,1));
            histogram(app.UIAxes2, data3(:,2));
            histogram(app.UIAxes3, data3(:,3));
            histogram(app.UIAxes4, data3(:,5));
            histogram(app.UIAxes5, data3(:,8));
            histogram(app.UIAxes6, data3(:,9));
            histogram(app.UIAxes7, data3(:,11));
            xlswrite("EE101_TP4_29-May-2022(3)",data3)
        end

        % Button pushed function: kWhDC71TLperminuteButton
        function kWhDC71TLperminuteButtonPushed(app, event)
            num_vehicle = 100;
            data4 = zeros(num_vehicle, 11);
            for i = 1:num_vehicle
                data4(i,1) = ceil(100*(betarnd(3,4))); 
            end

            brand = ["Tesla Model 3","Hyundai Kona Electric","BMW Ix3","Reanult Zoe","Mini Copper SE","Mercedes Benz EQC","Jaguar I-Pace"];
            a = "Tesla";
            for i = 1: num_vehicle
                x = rand();
                if x <= 0.05
                    data4(i,2) = 7;
                elseif x <= 0.4
                    data4(i,2) = 4;
                elseif x <= 0.45
                    data4(i,2) = 5;
                elseif x <= 0.55
                    data4(i,2) = 6;
                elseif x <= 0.75
                    data4(i,2) = 2;
                elseif x <= 0.80
                    data4(i,2) = 3;
                else 
                    data4(i,2) = 1;
                end
             end


            for i = 1:num_vehicle
                x = betarnd(2,3);
                y = betarnd(2,3);
                while y < x
                    y = rand();
           
                end
                data4(i,3) = ceil(10*x+10);
                data4(i,5) = ceil(10*y+10);
              
            end

            for i = 1:num_vehicle
                x = betarnd(2,3);
                time_arrival_minute = ceil(x*60);
                data4(i,4) = time_arrival_minute;
            end



            for i = 1:num_vehicle
                x = betarnd(2,3);
                time_departure_minute = ceil(x*60);
                data4(i,6) = time_departure_minute;
                  
    
                if data4(i,3) == data4(i,5)
                    time_departure_minute = data4(i,6)+data4(i,4)
                    time_departure_minute = ceil(y*60);
                    
                    data4(i,6) = time_departure_minute;
                else
                    data4(i,6) = time_departure_minute;
                end    
            
            end


            for i = 1:num_vehicle
                x = rand();
                if x > 0.5
                    data4(i,7) = 1;
                else
                    data4(i,7) = 0;
                end
            end 
           

            for i = 1:num_vehicle

                if data4(i,7) == 1
                     
                    x = rand() 
                    data4(i,10) = ceil(x*(100-data4(i,1)))
                     
                else
                    data4(i,10) = 0;
                end
            end


            for i = 1:num_vehicle
                if data4(i,2)==1
                    SOC = data4(i,1);
                    Total_capacity = 63.2;
                    Empty_capacity = ((100-SOC)/100)*Total_capacity;
                    data4(i,8)=Empty_capacity
                    data4(i,11) = Total_capacity*data4(i,10)/100/(90)*60
                elseif data4(i,2)==2
                    SOC = data4(i,1);
                    Total_capacity = 64;
                    Empty_capacity = ((100-SOC)/100)*Total_capacity;
                    data4(i,8)=Empty_capacity
                    data4(i,11) = Total_capacity*data4(i,10)/100/(90)*60
                elseif data4(i,2)==3
                    SOC = data4(i,1);
                    Total_capacity = 111.5;
                    Empty_capacity = ((100-SOC)/100)*Total_capacity;
                    data4(i,8)=Empty_capacity
                    data4(i,11) = Total_capacity*data4(i,10)/100/(90)*60
                elseif data4(i,2)==4
                    SOC = data4(i,1);
                    Total_capacity = 52;
                    Empty_capacity = ((100-SOC)/100)*Total_capacity;
                    data4(i,8)=Empty_capacity
                    data4(i,11) = Total_capacity*data4(i,10)/100/(90)*60
                elseif data4(i,2)==5
                    SOC = data4(i,1);
                    Total_capacity = 32;
                    Empty_capacity = ((100-SOC)/100)*Total_capacity;
                    data4(i,8)=Empty_capacity
                    data4(i,11) = Total_capacity*data4(i,10)/100/(90)*60% dakikaaaaaaaaaaaaaaaaaaaa
                elseif data4(i,2)==6
                    SOC = data4(i,1);
                    Total_capacity = 80;
                    Empty_capacity = ((100-SOC)/100)*Total_capacity;
                    data4(i,8)=Empty_capacity
                    data4(i,11) = Total_capacity*data4(i,10)/100/(90)*60
                elseif data4(i,2)==7
                    SOC = data4(i,1);
                    Total_capacity = 90;
                    Empty_capacity = ((100-SOC)/100)*Total_capacity;
                    data4(i,8)=Empty_capacity
                    data4(i,11) = Total_capacity*data4(i,10)/100/(90)*60
                end
            end
            

            for i = 1:num_vehicle
                if data4(i,2)==1
                    data4(i,9) = Total_capacity*data4(i,10)/100/(90)*60*7.1
                elseif data4(i,2)==2
                    data4(i,9) = Total_capacity*data4(i,10)/100/(90)*60*7.1
                elseif data4(i,2)==3
                    data4(i,9) = Total_capacity*data4(i,10)/100/(90)*60*7.1
                elseif data4(i,2)==4
                    data4(i,9) = Total_capacity*data4(i,10)/100/(90)*60*7.1
                elseif data4(i,2)==5
                    data4(i,9) = Total_capacity*data4(i,10)/100/(90)*60*7.1
                elseif data4(i,2)==6
                    data4(i,9) = Total_capacity*data4(i,10)/100/(90)*60*7.1
                elseif data4(i,2)==7
                    data4(i,9) = Total_capacity*data4(i,10)/100/(90)*60*7.1
                end
            end

            %plotting
            histogram(app.UIAxes,  data4(:,1));
            histogram(app.UIAxes2, data4(:,2));
            histogram(app.UIAxes3, data4(:,3));
            histogram(app.UIAxes4, data4(:,5));
            histogram(app.UIAxes5, data4(:,8));
            histogram(app.UIAxes6, data4(:,9));
            histogram(app.UIAxes7, data4(:,11));  
            xlswrite("EE101_TP4_29-May-2022(4)",data4)
        end
    end

    % Component initialization
    methods (Access = private)

        % Create UIFigure and components
        function createComponents(app)

            % Create UIFigure and hide until all components are created
            app.UIFigure = uifigure('Visible', 'off');
            app.UIFigure.Color = [0.902 0.902 0.902];
            app.UIFigure.Position = [100 100 959 555];
            app.UIFigure.Name = 'MATLAB App';

            % Create GridLayout
            app.GridLayout = uigridlayout(app.UIFigure);
            app.GridLayout.ColumnWidth = {'1x', '1x', '1x', '1x', '1x', '1x', '0.5x', '0.5x', '1x', '1x', '1x', '1x', '0.5x', '0.5x', '1x', '1x', '1x', '1x', '1x', '1x'};
            app.GridLayout.RowHeight = {'1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x'};
            app.GridLayout.BackgroundColor = [0.9098 0.9176 0.9882];

            % Create UIAxes
            app.UIAxes = uiaxes(app.GridLayout);
            title(app.UIAxes, 'State Of Charge')
            zlabel(app.UIAxes, 'Z')
            app.UIAxes.FontWeight = 'bold';
            app.UIAxes.FontSize = 12;
            app.UIAxes.Layout.Row = [1 4];
            app.UIAxes.Layout.Column = [1 6];

            % Create UIAxes7
            app.UIAxes7 = uiaxes(app.GridLayout);
            title(app.UIAxes7, {'Charge Duration'; ''})
            zlabel(app.UIAxes7, 'Z')
            app.UIAxes7.FontWeight = 'bold';
            app.UIAxes7.FontSize = 12;
            app.UIAxes7.Layout.Row = [9 12];
            app.UIAxes7.Layout.Column = [1 6];

            % Create UIAxes5
            app.UIAxes5 = uiaxes(app.GridLayout);
            title(app.UIAxes5, 'Empyty Capacity')
            zlabel(app.UIAxes5, 'Z')
            app.UIAxes5.FontWeight = 'bold';
            app.UIAxes5.FontSize = 12;
            app.UIAxes5.Layout.Row = [9 12];
            app.UIAxes5.Layout.Column = [15 20];

            % Create UIAxes6
            app.UIAxes6 = uiaxes(app.GridLayout);
            title(app.UIAxes6, 'Revenue')
            zlabel(app.UIAxes6, 'Z')
            app.UIAxes6.FontWeight = 'bold';
            app.UIAxes6.FontSize = 12;
            app.UIAxes6.Layout.Row = [1 4];
            app.UIAxes6.Layout.Column = [7 14];

            % Create UIAxes4
            app.UIAxes4 = uiaxes(app.GridLayout);
            title(app.UIAxes4, 'Time of Departure')
            zlabel(app.UIAxes4, 'Z')
            app.UIAxes4.FontWeight = 'bold';
            app.UIAxes4.FontSize = 12;
            app.UIAxes4.Layout.Row = [5 8];
            app.UIAxes4.Layout.Column = [15 20];

            % Create UIAxes3
            app.UIAxes3 = uiaxes(app.GridLayout);
            title(app.UIAxes3, 'Time of Arrival')
            zlabel(app.UIAxes3, 'Z')
            app.UIAxes3.FontWeight = 'bold';
            app.UIAxes3.FontSize = 12;
            app.UIAxes3.Layout.Row = [1 4];
            app.UIAxes3.Layout.Column = [15 20];

            % Create UIAxes2
            app.UIAxes2 = uiaxes(app.GridLayout);
            title(app.UIAxes2, 'Rate of Brands')
            zlabel(app.UIAxes2, 'Z')
            app.UIAxes2.FontWeight = 'bold';
            app.UIAxes2.FontSize = 12;
            app.UIAxes2.Layout.Row = [5 8];
            app.UIAxes2.Layout.Column = [1 6];

            % Create dc50
            app.dc50 = uibutton(app.GridLayout, 'push');
            app.dc50.ButtonPushedFcn = createCallbackFcn(app, @dc50Pushed, true);
            app.dc50.Layout.Row = [6 8];
            app.dc50.Layout.Column = [8 10];
            app.dc50.Text = {'50 kWh DC'; '(5.3 TL per minute)'};

            % Create kWhDC71TLperminuteButton
            app.kWhDC71TLperminuteButton = uibutton(app.GridLayout, 'push');
            app.kWhDC71TLperminuteButton.ButtonPushedFcn = createCallbackFcn(app, @kWhDC71TLperminuteButtonPushed, true);
            app.kWhDC71TLperminuteButton.Layout.Row = [9 11];
            app.kWhDC71TLperminuteButton.Layout.Column = [8 10];
            app.kWhDC71TLperminuteButton.Text = {'90 kWh DC'; '(7.1 TL per minute)'};

            % Create seven_AC
            app.seven_AC = uibutton(app.GridLayout, 'push');
            app.seven_AC.ButtonPushedFcn = createCallbackFcn(app, @seven_ACPushed, true);
            app.seven_AC.Layout.Row = [6 8];
            app.seven_AC.Layout.Column = [11 13];
            app.seven_AC.Text = {'7.4 kWh AC'; '(0.77 TL per minute)'};

            % Create kWhAC105TLperminuteButton
            app.kWhAC105TLperminuteButton = uibutton(app.GridLayout, 'push');
            app.kWhAC105TLperminuteButton.ButtonPushedFcn = createCallbackFcn(app, @kWhAC105TLperminuteButtonPushed, true);
            app.kWhAC105TLperminuteButton.Layout.Row = [9 11];
            app.kWhAC105TLperminuteButton.Layout.Column = [11 13];
            app.kWhAC105TLperminuteButton.Text = {'22 kWh AC'; '(1.05 TL per minute)'};

            % Create ChargeStationTypesLabel
            app.ChargeStationTypesLabel = uilabel(app.GridLayout);
            app.ChargeStationTypesLabel.HorizontalAlignment = 'center';
            app.ChargeStationTypesLabel.FontSize = 18;
            app.ChargeStationTypesLabel.Layout.Row = 5;
            app.ChargeStationTypesLabel.Layout.Column = [9 12];
            app.ChargeStationTypesLabel.Text = 'Charge Station Types';

            % Create WhenthebuttonsarepressedanexceltableiscreatedwiththedataLabel
            app.WhenthebuttonsarepressedanexceltableiscreatedwiththedataLabel = uilabel(app.GridLayout);
            app.WhenthebuttonsarepressedanexceltableiscreatedwiththedataLabel.HorizontalAlignment = 'center';
            app.WhenthebuttonsarepressedanexceltableiscreatedwiththedataLabel.Layout.Row = 12;
            app.WhenthebuttonsarepressedanexceltableiscreatedwiththedataLabel.Layout.Column = [9 12];
            app.WhenthebuttonsarepressedanexceltableiscreatedwiththedataLabel.Text = {'When the buttons are pressed, an '; 'excel table is created with the data'};

            % Show the figure after all components are created
            app.UIFigure.Visible = 'on';
        end
    end

    % App creation and deletion
    methods (Access = public)

        % Construct app
        function app = Alp_Doyduk_EE101_TermProject4

            % Create UIFigure and components
            createComponents(app)

            % Register the app with App Designer
            registerApp(app, app.UIFigure)

            if nargout == 0
                clear app
            end
        end

        % Code that executes before app deletion
        function delete(app)

            % Delete UIFigure when app is deleted
            delete(app.UIFigure)
        end
    end
end
