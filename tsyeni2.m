% -------------------------------------------------------------------
%  Generated by MATLAB on 28-Mar-2018 10:43:11
%  MATLAB version: 8.3.0.532 (R2014a)
% -------------------------------------------------------------------
                              
function [hh,y]=tsyeni2


VarName1 = [-3.552289; 5.24754; 1.69286; 5.064298; 6.719322; 11.66892; ...
            9.912501; 8.346786; 6.517766; 4.865085; 16.076321; 19.15424; ...
            14.06191; 4.650814; 1.54631; 4.62701; -1.540355; 1.540355; ...
            0; 7.672257; 6.102576; 6.209472; 4.533152; 0; -7.564866; 0; ...
            19.57049; -1.494151; 1.494151; 0; -1.494151; 0; 1.494151; 0; ...
            -1.494151; -2.993894; -6.010291; 3.008908; 1.50163; 2.997634; ...
            4.482457; 2.979029; 2.971549; 1.483071; 2.960655; -4.443726; ...
            -1.484906; 2.967978; -1.483071; -1.484906; -2.839906; 2.839906; ...
            1.484906; 0; -1.484906; -2.839906; -2.982291; 2.982291; -2.982291; ...
            0; 0; 1.49202; 0; 0; 0; 2.978693; -2.978693; 4.330177; 0; 1.484906; ...
            -2.83639; 0; 0; 2.83639; 1.483071; 5.914023; 5.751562; 8.774637; ...
            -1.457907; 1.457907; 5.682521; 1.449363; 2.893485; 0; 2.886525; ...
            2.74883; 2.873018; 2.866156; 7.006195; 5.678584; 1.415482; ...
            1.413814; 0; 4.103441; 0; 7.020216; 1.399128; 6.84486; 2.777502; ...
            0; 1.386248; 1.384744; 0; 0; 1.383148; 1.381556; -1.381556; ...
            1.381556; -1.381556; 0; 1.381556; 1.254555; 5.504627; 2.742874; ...
            -1.370653; 2.739743; 3.973921; 1.36301; -2.727571; 1.36456; ...
            0; 6.799529; 0; 2.586158; 0; 0; 1.352397; 5.394306; 1.344819; ...
            0; 0; 1.343314; -1.343314; 1.343314; 0; 1.341812; 5.23089; ...
            -1.335972; 2.670459; 0; 0; 0; 0; 2.664529; 2.658626; 2.532271; ...
            0; 0; 2.647071; 0; 6.592472; -1.3156; 0; -1.317044; 1.317044; ...
            1.3156; 1.194725; 0; 0; 5.242814; 3.917133; 0; 1.302875; 1.183181; ...
            0; 2.598952; 0; 0; -1.298772; 1.298772; 2.593336; 0; 2.587653; ...
            1.291782; -1.291782; 2.582175; 1.171857; 2.574118; 1.284992; ...
            -1.284992; 0; 1.284992; 3.846739; 2.557659; 6.254851; 1.270154; ...
            -2.541654; 2.541654; 0; 2.536194; 3.67957; 0; 7.553715; 2.393494; ...
            4.999561; 0; 2.491991; 2.486741; 7.317456; 1.23394; 4.811423; ...
            0; 0; 0; 1.227743; 2.451723; 2.446724; 3.549967; 3.649961; ...
            4.849325; 2.307577; 3.617287; 3.606416; 2.289339; 3.588767; ...
            4.768305; 3.456034; 4.735883; 3.539687; 4.596686; 3.515803; ...
            3.399432; 3.495549; 3.485477; 5.681739; 3.45899; 2.300467; ...
            3.338259; 4.574945; 6.726781; 5.662605; 3.282331; 7.861482; ...
            3.252032; 4.457231; 4.339972; 4.424734; 5.408054; 7.570396; ...
            2.182552; 5.439077; 3.153226; 7.55364; 4.197689; 3.211568; ...
            5.236804; 2.126986; 4.242622; 6.240278; 4.110415; 5.237093; ...
            2.088382; 5.11083; 5.183215; 6.096802; 5.041712; 6.133401; ...
            2.962434; 1.016681; 1.01582; 2.029064; 1.013247; 3.952596; ...
            1.009064; 5.945445; 3.007194; 2.999539; 2.901685; 2.98498; ...
            2.977574; 2.880218; 4.93443; 2.950948; 3.834231; 2.934329; ...
            5.758887; 8.630559; 11.4407; 9.436906; 6.536329; 7.438794; ...
            3.659775; 19.304211; 1.838323; 7.242186; 8.105994; 8.05148; ...
            9.785962; 15.81417; 12.12203; 6.883693; 12.01069; 10.11145; ...
            7.566704; 13.39428; 12.34267; 9.006326; 9.680984; 7.246837; ...
            4.855838; 6.371189; 4.738003; 4.71948; 5.566699; 9.340268; ...
            12.3889; 4.665991; 5.350513; 6.864336; 6.061113; 5.269925; ...
            3.040442; 3.720887; 3.778037; 5.200997; 6.673568; 7.379198; ...
            5.857414; 5.09352; 5.072093; 5.117023; 3.575525; 5.014266; ...
            6.435108; 12.05445; 6.336976; 9.123064; 6.255971; 7.616233; ...
            4.105433; 4.782352; 2.760079; 4.065748; 5.420399; 4.033883; ...
            6.056223; 7.374409; 8.668254; 9.873637; 10.45107; 11.01275; ...
            5.79318; 5.119508; 7.025764; 7.623123; 6.306279; 6.273224; ...
            9.946648; 11.10651; 10.38971; 11.51951; 13.76667; 11.87701; ...
            9.987637; 9.318593; 10.41078; 9.167216; 6.281625; 9.620259; ...
            14.00574; 14.95696; 14.77275; 8.707769; 10.17003; 8.57234; ...
            7.396264; 9.999892; 11.96707; 7.265405; 7.174647; 7.693233; ...
            10.61418; 15.06089; 9.936591; 6.880011; 7.334265; 6.843737; ...
            9.197388; 8.644333; 9.498251; 5.220479; 4.722268; 4.229963; ...
            6.531282; 3.765132; 1.835451; 1.875277; 8.318006; 11.90948; ...
            8.179443; 2.243804; 5.880264; 5.358331; 1.808168; 0.903063; ...
            2.664138; 0.409372; 0.8182; 8.558391; 6.479959; 4.032262; 4.820824; ...
            4.002672; 5.979086; 3.176779; 1.981179; 1.582568; 6.702875; ...
            5.491976; 2.736532; 5.843219; 3.492417; 3.868475; 3.856044; ...
            4.994358; 5.737063; 3.048542; 0; 0.760985; 2.279948; 4.92498; ...
            5.281344; 4.883469; 4.490115; 3.729027; 1.860177; 2.599458; ...
            3.703707; 3.692311; 4.048485; 2.935736; 3.659655; -3.293165; ...
            -5.508809; -2.579503; 3.683244; 5.869799; 0.365932; 2.193139; ...
            5.828813; 1.089709; 1.08872; 1.087844; 7.226761; 4.308729; ...
            5.364409; 6.405601; 4.251591; 4.236581; 3.167622; 6.310269; ...
            6.27726; 3.126359; 1.040348; 0; 3.115431; 3.107574; 5.161263; ...
            6.164397; 4.092111; 5.095515; 5.073969; 5.052708; 8.040197; ...
            3.999936; 0.998057; 1.993322; 5.960278; 4.944349; 6.888122; ...
            7.823956; 6.804426; 2.904398; 2.897386; 1.927679; 3.84619; ...
            5.74622; 2.862824; 1.90473; 12.30783; 5.638225; 6.544558; 1.863323; ...
            2.789618; 6.484031; 4.61004; 10.99254; 9.988676; 7.212614; ...
            2.693695; 0];


n=490;
alpha=0.348;
betha=alpha;
%alpha=0.3455;
j=0;
for i=1:n+1;
    if i==1;
        C(i)=1;
    else C(i)=C(i-1)*((j-alpha-1)/j);
    end;
    j=j+1;
end;

for i=1:n+1;
    y(i)=C(1:i)*VarName1(i:-1:1);
end;
y'
for i=1:n+2;
   if i==1;
        g(i)=1;
    else g(i)=g(i-1)*((i-1)-betha-1)/(i-1);
   end;
    i=i+1;
end;
g;
for i=1:n+2;
   if i==1;
        ww(i)=(betha/2);
    else ww(i)=g(i-1)*((2-betha)/2)+(betha/2)*g(i);
   end;
    i=i+1;
end;
ww;

for i=3:n+1;
    E(i)=(sec(betha*pi/2)/2)*ww(i+1);
end;
E(1)=(sec(betha*pi/2))*ww(2);
E(2)=(sec(betha*pi/2)/2)*(ww(1)+ww(3));
h=1;
for i=1:n+1;
    H(i,i)=E(1);
end;
for l=1:n+2;
for k=1:n-l+1;
        H(k,k+l)=E(l+1);
    end;
    for k=1:n-l+1;
        H(k+l,k)=E(l+1);
    end;
end;
H

hh=H*VarName1(1:n+1)
  


plot(VarName1)
hold on;
plot(y,'g')
hold on;
plot(hh,'r')






%%%%Sample mean squared displacement function





