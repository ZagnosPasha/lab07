model Advertising

parameter Real N = 1170; // максимальное количество людей, которых может заинтересовать товар
parameter Real n0 = 7; // количество людей, знающих о товаре в начальный момент времени
Real n(start=n0); // количество людей, знающих о товаре

function k
  input Real t;
  output Real result;
algorithm
  //result := 0.895; //для первого случая
  //result := 0.0000145; //для второго случая
  result := 0.196*t; //для третьего случая
end k;

function p
  input Real t;
  output Real result;
algorithm
  //result := 0.0000433; // для первого случая
  //result := 0.295; //для второго случая
  result := 0.699*t; //для третьего случая
end p;

equation

der(n) = (k(time) + p(time) * n)*(N-n);

end Advertising;
