def count_handle(array)
  #Combien y a-t-il de handle dans cette array ?
  puts "Il y a #{array.count} éléments dans le tableau"
  return array.count
end

def most_shorted_handle(array)
  #Quelle est le handle le plus court de cette liste ?
  i = 0.to_i
  while true
    array.each do |value|
      if (value.size == i)
        puts "La première valeur la plus courte du tableau est #{value}"
        return value
      end
    end
    i += 1
  end
end

def match_nb_char(array, nbChar)
  #Combien y-a-t'il de handle contenant 5 caractères ?
  match = []
  array.each do |value|
    if (value[1..-1].size == nbChar) #Enlever le @ qui ne doit pas compter
      match << value
    end
  end
  puts "Il y a #{match.count} valeurs dans le tableau ayant #{nbChar} charactères"
  return match.count
end

def match_capitalize(array)
  #Combien commencent par une majuscule ?
  i = 0
  array.each do |value|
    if (value[1..-1].capitalize === value[1..-1])
      i += 1
    end
  end
  puts "Il y a #{i} valeurs commençant par une majuscule dans le tableau"
  return i
end

def sort_alpha(array)
  #Trie la liste de handle par ordre alphabétique.
  puts "Le tableau trié par ordre alphabétique :"
  sorted = array.sort_by(&:downcase)
  puts sorted
  return sorted
end

def sort_size_handle(array)
  #Trie la liste de handle par taille des handle.
  sorted = array.sort_by(&:length)
  puts "Voici le tableau trié par taille :"
  puts sorted
  return sorted
end

def position(array, handle)
  #Quelle est la position dans l'array de la personne XXX ?
  handle = "@" + handle.downcase
  elements = array.map(&:downcase)
  position = elements.index(handle)
  if position
    puts "#{handle} est position #{position} dans le tableau"
  else
    puts "Il n'y a pas d'occurence dans le tableau pour #{handle}"
  end
  return position  
end

def repartition(array)
  #Sors-moi une répartition des handle par taille de ces derniers
  i = 0
  maxSize = 0
  array.each do |value|
    if (value.size > maxSize)
      maxSize = value.size
    end
  end

  while i <= maxSize
    match_nb_char(array, i)
    i += 1
  end
end

#data
reporters = ["@jcunniet","@PaulLampon","@Aziliz31","@ssoumier","@marionsouzeau","@gaellombart","@bendarag","@AurelieLebelle","@julienduffe","@thomaspoupeau","@LilyRossignol","@ClairGuedon","@stephanieauguy","@claw_prolongeau","@_JulieMenard","@LColcomb","@Zlauwereys","@MeLonguet","@DorotheeLN","@NolwennCosson","@ADaboval","@Remibaldy","@bderveaux","@amandechap","@ELODIESOULIE","@nbongarcon","@HeloAb","@Panamorama","@gregplou","@BenoitBerthe","@LauraBruneau89","@Anthony_Lieures","@Sharonwaj","@mcsonkin","@pverduzier","@emiliel3","@Julien_MARION","@SophiFay","@bdelombre","@annalecerf","@AdriaBudry","@DejNikolic","@iJaffre","@CyrusleVirus","@GPardigon","@e_vallerey","@IsabelleSouquet","@AudeDavidRossi","@Yoann_Pa","@CeliaPenavaire","@perraultvincent","@cboulate","@JustineWeyl","@Paulinejacot","@juliechab","@aslechevallier","@phnou","@Seb_Pommier","@Alex_Bensaid","@GuillaumeGaven","@annelaurechouin","@Oliviader","@guerricp","@JMMarchaut","@cyceron","@gregory_raymond","@vhunsinger","@l_peillon","@fannyguinochet","@EAssayag","@KibweAdom","@YvonHerry","@JohanGarciajg","@saidlabidi","@lauranneprov","@LeaDavy","@francois_remy","@CGuicheteau","@FloMaillet","@m_perroud","@oBrunet_TSMF","@MoonVdc","@jc2taille","@NellyMoussu","@VirginK","@b_misa","@FabriceCouste","@barbara_prose","@lelia2m","@brunoaskenazi","@laurenechamp","@ysisbox","@juliengagliardi","@PierreLel","@kdeniau","@_TerraInc","@DominicArpin","@antoinfonteneau","@nanotousch","@jb_roch","@YaniKhezzar","@Anne_Bechet","@NCapart","@SamyBenNaceur","@Joumany","@Julietteraynal","@TGiraudet","@SaraTanit","@HappeFrederic","@antoinellorca","@michelpicot","@Sev_Ryne","@bobdobolino","@murdever","@YGrandmontagne","@Mnyo","@EdKOSCIANSKI","@tnoisette","@jankari","@delbello_rom","@rflechaux","@NadiaSorelli","@IT_Digital","@abarbaux","@PhilippeLeroy","@schaptal","@marionspee","@lisavignoli","@ChloeAeberhardt","@MartineJacot","@JuliaPascualita","@curieusedetout","@sgraveleau","@bif_o","@ElisaPineau","@zinebdryef","@apiquard","@pierrehaski","@StephanieDelmas","@Blandine_Garot","@vergara_i","@evan_lebastard","@SophieVclt","@OlivierLevrault","@alicedorgeval","@LouiseMalnoy","@alix_fx","@pierre_baudis","@LucMagoutier","@AgatheMuller","@SGianninelli","@PaulineBoyer33","@NaomiHalll","@romaindlx","@marionbr","@Burtschy","@JacobEtienne","@as_lizzani","@marie_simon","@LaureDaussy","@FabriceAmedeo","@min","@LoubnaChlaikhy","@PlummerWilliam","@OlivierMarin1","@alaurefremont","@mwesfreid","@ChBaDe","@pmathon","@theobaldmarie","@Lnpagesy","@marclandre","@paoliniesther","@Feertchak","@JBLitzler","@GuillaumeErrard","@quentinperinel","@TristanQM","@mlbo","@constancejamet","@LoraTerrazas","@emiliegeffray","@Mathilde_Sd","@CaroPiquet","@DCanivez","@TIM_7375","@blandinelc","@ivanrioufol","@arthurberdah","@SarahLecoeuvre","@guillaume_gui","@DamienMercereau","@W_Chloe","@Assma_MD","@EugenieBastie","@HiTech_lexpress","@bcondominas","@Laurie_Z_","@jeanfrancgerard","@MathieuPagura","@BGUYF","@AlainPiffaretti","@AudreyKucinskas","@julienhory","@Pierrefalga","@TiphThuillier","@cdaniez","@LigerBaptiste","@D_Peras","@julie_dlb","@Fatiha_Temmouri","@julian2lamancha","@GaetaneDeljurie","@JulianMattei","@M_Vicuna","@DeBruynOlivier","@Nehed_Jendoubi","@antoine_grenapi","@ColonnaGen","@VictoriaGairin","@Clement_Lacombe","@TVigoureux","@MargauxObriot","@solinedelos","@RocheSabine","@dangerkens","@EdouardDutour","@MDondeyne","@DupuisNathalie1","@bouscarel","@Mathieu2jean","@Sophie_T_J","@laurentcalixte","@patrockwilliams","@PascaleKremer","@AlexJaquin","@LauraIsaaz","@cath_robin","@Del_Gautherin","@Isaduriez","@lucietuile","@AugeyBastien","@mcastagnet","@AminaKalache","@mvaudano","@CParrot","@ombelinetips","@_JoinLion","@BarbolosiRose","@ToiBruno1","@FloraClodic","@xjbdx","@ceci_est_un_handle_vraiment_long","@AlexiaEy","@Emjy_STARK","@elcoco01","@rabilebon","@pflovens_","@FabriceFrossard","@MorganeSERRES","@MarjolaineKoch","@edgarsnow","@SRNLF","@CChassigneux","@KerinecMoran","@NassiraELM","@NewsRicard","@Sandreene","@Emilezrt","@Pierre_Do","@Micode","@CColumelli","@DavidAbiker","@ClementBergantz","@benjaminrabier","@celinekallmann","@edwyplenel","@C_Barbier","@JJBourdin_RMC","@LaurenceFerrari","@aslapix","@IsaMillet","@MaximeSwitek","@tomjoubert","@jszanchi","@roqueeva","@XavierBiseul","@florencesantrot","@AntoineCrochet","@freeman59","@MaudeML","@philippe_gulpi","@mathieum76","@kiouari","@imanemoustakir","@BenedicteMallet","@Emilie_Brouze","@antoinebarret","@_nicolasbocquet","@remibuhagiar","@CourretB","@AymericRobert","@miraelmartins","@pmaniere","@jesuisraphk","@David_Ingram","@pcelerier","@technomedia","@Geraldinedauver","@ThierryLabro","@Newsdusud","@nrauline","@gbregeras","@SCouasnonBFM","@actualites_nrv","@dimitrimoulins","@oli_aura","@FabieChiche","@Vincent_Raimblt","@ChristophGreuet","@PAlbuchay","@MarrauddesGrot","@vtalmon","@cedric","@olivierfrigara","@Julien_Jay","@LydiaBerroyer","@Shuua","@datisdaz","@Steuph","@ameliecharnay","@Bruno_LesNums","@LelloucheNico","@CciliaDiQuinzio","@Elodie_C","@SylvRolland","@Kocobe","@FL_Debes","@jdupontcalbo","@GarciaVictor_","@NicoRichaud","@RHoueix","@simottel","@DamienLicata","@annabelle_L","@Lea_Lejeune","@axel_deb","@marin_eben","@ptiberry","@MatthieuDelach","@sandrinecassini","@benjaminferran","@ppgarcia75","@NotPatrick","@ivalerio","@FabienneSchmitt","@alexgoude","@JeromeColombain","@manhack","@Capucine_Cousin","@Fsorel","@oliviertesquet","@marjoriepaillon","@ginades","@PierreTran","@DelphineCuny","@reesmarc","@lauratenoudji","@ldupin","@carolinedescham","@Lucile_Quillet","@cgabizon","@Allocab","@epenser","@JAGventeprivee","@frwrds","@Laure__Bourdon","@Xavier75","@maximeverner","@s_jourdain","@LoriHelloc"]
input = ""


while true

  #Menu
  puts "****************************************MENU****************************************"
  puts "*                            Que souhaitez-vous faire ?                            *"
  puts "************************************************************************************"
  puts "* 1 - Combien y a-t-il de handle dans cette array ?                                *"
  puts "* 2 - Quelle est le handle le plus court de cette liste ?                          *"
  puts "* 3 - Combien y-a-t'il de handle contenant 5 caractères ?                          *"
  puts "* 4 - Combien commencent par une majuscule ?                                       *"
  puts "* 5 - Trie la liste de handle par ordre alphabétique.                              *"
  puts "* 6 - Trie la liste de handle par taille des handle.                               *"
  puts "* 7 - Quelle est la position dans l'array de la personne ?                         *"
  puts "* 8 - Sors-moi une répartition des handle par taille de ces derniers.              *"
  puts "* Q - Quitter le programme                                                         *"
  puts "************************************************************************************"
  print "> "
  input = gets.chomp

  case input
  when "1"
    count_handle(reporters)
  when "2"
    most_shorted_handle(reporters)
  when "3"
    match_nb_char(reporters, 5)
  when "4"
    match_capitalize(reporters)
  when "5"
    sort_alpha(reporters)
  when "6"
    sort_size_handle(reporters)
  when "7"
    puts "Quel personne cherchez-vous ? (sans le @)"
    print "> "
    handle = gets.chomp
    position(reporters, handle)
  when "8"
    repartition(reporters)
  when "q", "Q"
    puts "Merci d'avoir utilisé ce programme, bonne continuation !"
    break
  else
    puts "Valeur non comprise, vous devez répondre un nombre de 1 à 8 ou Q"
  end
end