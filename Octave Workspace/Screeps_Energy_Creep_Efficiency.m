function [] = Screeps_Energy_Creep_Efficiency()
  %https://stackoverflow.com/questions/24747643/3d-linear-regression/51000118
  
  %X=[1 1 1 1;1 1 3 1;1 1 2 3;1 2 2 4;1 4 6 5;1 5 7 12;1 6 10 16;1 7 14 11]
  %y=[5.0;7.0;9.3;12.7;26.0;39.7;53.3;56.0]
  %theta = (pinv(X'*X))*X'*y
  
  %standard plane regression
  [A,B,C,D,y] = textread("data.txt","%f %f %f %f %f");
  X=cat(2,A,B,C,D);
  theta = (pinv(X'*X))*X'*y
  
  %PCA k dimension approximations 1<k<m m=matrix size,3 in this case(B,C,D)
  k=1;
  X=cat(2,B,C,D);
  y= [mean(B);mean(C);mean(D)];
  Xm = X .- y';
  e = (1/length(A))*X'*X;
  [E,F,G] = svd((1/length(A))*e'*e);
  Ereduce = E(:,1);
  
  %going back
  z= Ereduce' * Xm';
  approx = (Ereduce .* z .+ y)'