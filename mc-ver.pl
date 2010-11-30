use Archive::Zip;
my $mc_path = "$ENV{APPDATA}/.minecraft/bin/minecraft.jar";
exit unless -e $mc_path;
my @lines = split /\n/, 
   Archive::Zip->new($mc_path)->contents('title/splashes.txt');

my $splash = $lines[ int(rand(scalar @lines)) ];
chomp $splash;
print $splash;
