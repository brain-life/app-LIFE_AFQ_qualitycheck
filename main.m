function main()

switch getenv('ENV')
case 'IUHPC'
	disp('loading paths (HPC)')
	addpath(genpath('/N/u/hayashis/BigRed2/git/jsonlab'))
	addpath(genpath('/N/u/hayashis/BigRed2/git/vistasoft'))
    addpath(genpath('/N/u/hayashis/BigRed2/git/encode'))
case 'VM'
	disp('loading paths (VM)')
	addpath(genpath('/usr/local/jsonlab'))
	addpath(genpath('/usr/local/vistasoft'))
    addpath(genpath('/usr/local/encode'))
end

% load config.json
config = loadjson('config.json');

load(config.AFQ);
load(config.fe);

mkdir('images')
[figure, results] = feAndAFQqualityCheck(fe, classification, 'images')

end
