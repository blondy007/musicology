CREATE TABLE GRUPOS (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nombre VARCHAR(50) NOT NULL,
  descripcion VARCHAR(4000),
  estilo VARCHAR(255),
  puntuacion INT,
  observaciones VARCHAR(4000),
  relacionados VARCHAR(255)
);


CREATE TABLE ESTILOS (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nombre VARCHAR(50) NOT NULL,
  descripcion VARCHAR(4000)
);

CREATE TABLE ESTILOS_GRUPO (
  id INT PRIMARY KEY AUTO_INCREMENT,
  id_estilo INT,
  id_grupo INT,
  FOREIGN KEY (id_estilo) REFERENCES ESTILOS(id),
  FOREIGN KEY (id_grupo) REFERENCES GRUPOS(id)
);

-- Inserts de prueba
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('36 CRAZYFISTS', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('7 ANGELS 7 PLAGUES', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('A DAY TO REMEMBER', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('ABOVE THIS', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('ABYSMAL DAWN', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('ACUMEN NATION', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('ACT OF DEFIANCE', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('AFTER THE BURIAL', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('ALL SHALL PERISH', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('ALL THAT REMAINS', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('ALLEGAEON', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('ALLUVIAL', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('ANDROMIDA', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('ANDY GILLION', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('ANDY JAMES', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('ANDY TIMMONS', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('ANGEL VIVALDI', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('ANIMALS AS LEADERS', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('ANUP SASTRY', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('ANY GIVEN DAY', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('ARCH ECHO', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('ARCH ENEMY', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('ARCHITECTS', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('ARSIS', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('AS BLOOD TUNS BLACK', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('AS I LAY DYING', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('ASKING ALEXANDRIA', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('AT THE GATES', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('ATREYU', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('ATTILA', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('AUGUST BURST RED', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('AUSTRIAN DEATH MACHINE', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('AVENGED SEVENFOLD', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('BAD WOLVES', 'Heavy metal band from America.');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('BEARTOOTH', 'Metalcore band from America.');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('BEHEMOTH', 'Blackened death metal band from Poland.');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('BENEATH THE SKY', 'Metalcore band from America.');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('BERNTH', 'Swedish guitarist known for his solo work and being a member of the band Scar Symmetry.');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('BERRIED ALIVE', 'Progressive metal band from America.');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('BETRAYING THE MARTYRS', 'Metalcore band from France.');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('BETWEEN THE BURIED AND ME', 'Progressive metal band from America.');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('BEYOND CREATION', 'Progressive death metal band from Canada.');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('BLACK VEIL BRIDES', 'Glam metal band from America.');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('BLEED FROM WITHIN', 'Metalcore band from Scotland.');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('BLEED THE SKY', 'Heavy metal band from America.');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('BLEEDING THROUGH', 'Metalcore band from America.');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('BLESSTHEFALL', 'Metalcore band from America.');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('BLOOD HAS BEEN SHED', 'Metalcore band from America.');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('BLOTTED SCIENCE', 'Technical death metal band from America.');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('BOYINABAND', 'British YouTuber and musician.');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('BORN OF OSIRIS', 'Progressive metalcore band from America.');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('BODYSNATCHER', 'Deathcore band from America.');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('BREAKDOWN OF SANITY', 'Metalcore band from Switzerland.');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('BRING ME THE HORIZON', 'Metalcore band from England.');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('BUCKETHEAD', 'American guitarist and multi-instrumentalist known for his virtuosic playing style and eccentric stage presence.');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('BULLET FOR MY VALENTINE', 'Metalcore band from Wales.');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('BURIED IN VERONA', 'Metalcore band from Australia.');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('BURY TOMORROW', 'Metalcore band from England.');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('BURY YOUR DEAD', 'Metalcore band from America.');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('BYZANTINE', 'Groove metal band from America.');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('CACOPHONY', 'Neoclassical metal supergroup featuring guitarists Marty Friedman and Jason Becker.');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('CALIBAN', 'Metalcore band from Germany.');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('CALIGULA''S HORSE', 'Progressive metal band from Australia.');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('CANNIBAL CORPSE', 'Death metal band from America.');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('CAR BOMB', 'Mathcore band from America.');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('CHELSEA GRIN', 'Deathcore band from America.');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('CHIMAIRA', 'Metalcore band from America.');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('CHON', 'Instrumental progressive rock band from America.');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('CHRIS POLAND', 'American guitarist known for his work with Megadeth and Damn the Machine.');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('CIRCUS MAXIMUS', 'Progressive metal band from Norway.');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('CLOUDKICKER', 'Instrumental progressive metal project from Canada.');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('CODE ORANGE', 'Metalcore band from America.');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('CONQUERING DYSTOPIA', 'Instrumental progressive metal supergroup featuring guitarist Jeff Loomis and Keith Merrow.');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('CONVERGE', 'Metalcore band from America.');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('CORONER', 'Thrash metal band from Switzerland.');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('COUNT TO SIX', 'Metalcore band from America.');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('COUNTERPARTS', 'Melodic hardcore band from Canada.');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('CROSSBREED', 'Nu metal band from America.');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('CYCLAMEN', 'Progressive metal band from Japan.');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('CYNIC', 'Progressive death metal band from America.');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('DANCE GAVIN DANCE', 'Post-hardcore band from America.');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('DARK TRANQUILITY', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('DARKEST HOUR', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('DAVID MAXIM MICIC', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('DEAD LETTER CIRCUS', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('DECAPITED', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('DEFTONES', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('DEREK SHERINIAN', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('DEVILDRIVER', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('DEVIN TOWNSEND', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('DEVIN TOWNSEND PROJECT', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('DIABLO SWING ORCHESTRA', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('DIECAST', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('DREDG', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('DYING FETUS', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('EARTH CRISIS', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('EKTOMORF', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('ELITIST', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('EMMURE', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('ENDO', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('ERRA', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('EVERGREY', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('EVETY TIME I DIE', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('FALLING IN REVERSE', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('FATES WARNING', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('FEAR FACTORY', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('FEARED', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('FEED HER TO THE SHARKS', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('FELLSILENT', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('FIT FOR A KING', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('FIVE FINGER DEATH PUNCH', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('FOR THE FALLEN DREAMS', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('FUNERAL FOR A FRIEND', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('GENERATION AXE', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('GHOST BRIGADE', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('GLASSJAW', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('GLASSJAW EYEWTKAS', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('GOD FORBID', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('GOJIRA', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('GOOD TIGER', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('HACKTIVIST', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('HAKEN', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('HANDS LIKE HOUSES', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('HASTE THE DAY', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('HATEBREED', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('HAVOK', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('HEATHEN', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('HEAVEN SHALL BURN', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('HELLYEAH', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('HIMSA', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('HONOUR CREST', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('HOPESFALL', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('I BUILT THE SKY', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('I SEE STARS', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('I THE BREATHER', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('ICE NINE KILLS', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('IMPENDING DOOM', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('IN FLAMES', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('IN THIS MOMENT', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('INTERVALS', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('INTO ETERNITY', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('INVENT, ANIMATE', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('INVISIONS', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('IRON MAIDEN', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('IT DIES TODAY', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('JAKE HOWSAN LOWE', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('JAKUB ZYTECKI', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('JARED DINES', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('JASON BECKER', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('JEFF LOOMIS', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('JINJER', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('JOE STUMP', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('JUDAS PRIEST', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('KARI BAND', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('KARNIVOOL', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('KATATURA', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('KIKO LOUREIRO', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('KILLSWITCH ENGAGE', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('LAMB OF GOD', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('LEE MCKINNEY', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('LIKE MOTHS TO FLAMES', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('LEPROUS', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('LIQUID TENSION EXPERIMENT', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('LIQUORWORKS', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('LIVING SACRIFICE', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('LOST SYMPHONY', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('LUIS KALIL', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('MACHINE HEAD', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('MAD ESSENCE', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('MARTY FRIEDMAND', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('MASTODON', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('MEGADETH', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('MEGALODON', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('MEMPHIS MAY FIRE', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('MENDEL', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('MERROW', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('MESHUGGAH', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('MESTÍS', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('METAL ALLEGIANCE', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('METALLICA', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('MICHAEL ANGELO BATIO', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('MICHAEL ROMEO', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('MICK GORDON', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('MIKE LE ROSSETTI', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('MISERY SIGNALS', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('MISS MAY I', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('MNEMIC', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('MODERN DAY BABYLON', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('MODES OF RANVIER', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('MONUMENTS', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('MORS PRINCIPIUM EST', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('MOTIONLESS IN WHITE', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('MYCHILDREN MYBRIDE', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('NE OBLISVISCARIS', 'Ne Obliviscaris es una banda de metal progresivo y extremo originaria de Australia. Se formó en Melbourne en 2003 y está compuesta por seis miembros, incluyendo un violinista y un violista. La música de Ne Obliviscaris se caracteriza por su combinación de elementos de metal extremo, metal progresivo y música clásica, así como por la complejidad de sus arreglos y composiciones. La banda ha sido elogiada por su habilidad para mezclar la brutalidad del metal con la belleza y la elegancia de la música clásica. Ne Obliviscaris ha lanzado tres álbumes de estudio hasta la fecha: "Portal of I" en 2012, "Citadel" en 2014 y "Urn" en 2017. La banda ha recibido críticas muy favorables por parte de la prensa especializada y ha ganado un gran número de seguidores en todo el mundo gracias a su música innovadora y emocionante.');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('NECROPHAGIST', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('NEVERMORE', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('NORMA JEAN', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('NORTHLANE', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('NUCLEAR POWER TRIO', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('OBEY THE BRAVE', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('OCEANO', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('OCTAVISION', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('OF MICE & MEN', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('OLA ENGLUND', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('OMNIUM GATHERUM', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('OPETH', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('OUR LAST NIGHT', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('OWANE', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('PAGAN''S MIND', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('PANTERA', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('PARASITE INC.', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('PARKWAY DRIVE', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('PAUL WARDINGHAM', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('PERIPHERY', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('PLINI', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('POISON THE WELL', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('POKEY LAFARGE', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('POLYPHIA', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('POMEGRANATE TIGER', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('PORCUPINE TREE', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('PROTEST THE HERO', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('PSYCOTIC', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('REMEMBERING NEVER', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('REVOCATION', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('RINGS OF SATURN', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('RIVERS OF NIHIL', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('ROADRUNNER UNITED', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('ROB ZOMBIE', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('ROMA IVAKOV', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('SATYR', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('SCALE THE SUMMIT', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('SCAR SYMMETRY', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('SEA IN THE SKY', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('SENSES FAIL', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('SHADOWS FALL', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('SHAI HULUD', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('SHAWN LANE', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('SHOKRAN', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('SIKTH', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('SILENT PLANET', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('SIRENS', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('SITHU AYE', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('SKYHARBOR', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('SLAYER', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('SLEEPING WITH SIRENS', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('SOEN', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('SOFTEN THE GLARE', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('SOLUTION .45', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('SONS OF ABRAHAM - ALBUM TERMITES IN HIS', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('SONS OF APOLLO', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('STEVIE T.', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('STICK YOUR GUNS', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('STILL REMAINS', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('STONE SOUR', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('STORY OF THE YEAR', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('STRAY FROM PATH', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('SUICIDE SILENCE', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('SYLOSIS', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('SYMPHONY X', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('TESSERACT', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('TESTAMENT', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('TEXAS IN JULY', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('TEXTURES', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('THANK YOU SCIENTIST', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('THE ABSENCE', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('THE ACACIA STRAIN', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('THE AGONY SCENE', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('THE ALGORITHM', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('THE ARISTOCRATS', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('THE AUTONOMIST', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('THE BLACK DAHLIA MURDER', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('THE BLED', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('THE BROWNING', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('THE CONTORTIONIST', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('THE DEVIL WEARS PRADA', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('THE DILLINGER ESCAPE PLAN', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('THE FACELESS', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('THE GHOST INSIDE', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('THE HALO EFFECT', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('THE HAUNTED', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('THE HELIX NEBULA', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('THE MAGNIFICENT 13', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('THE OCEAN', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('THE OMNIFIC', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('THE PLOT IN YOU', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('THE RED JUMPSUIT APPARATUS', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('THE SORROW', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('THE USED', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('THE WORD ALIVE', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('THE ZENITH PASSAGE', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('THEIR DOGS WERE ASTRONAUTS', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('THIS OR THE APOCALYPSE', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('THRAILKILL', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('THREAT SIGNAL', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('THRICE', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('THROUGH THE EYES OF THE DEAD', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('THY ART IS MURDER', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('TIME, THE VALUATOR', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('TIMES OF GRACE', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('TINARIWEN', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('TONY MACALPINE', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('TOOTHGRINDER', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('TOTHEARK', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('TRIVIUM', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('UNDEROATH', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('UNEARTH', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('UNEVEN STRUCTURE', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('UNPROCESSED', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('UPON A BURNING BODY', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('VANNA', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('VEIL OF MAYA', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('VILDHJARTA', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('VITALISM', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('VOLA', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('VOLUMES', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('WAGE WAR', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('WAKING THE CADAVER', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('WALLS OF JERICHO', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('WALTER TROUT', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('WAR OF AGES', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('WE CAME AS ROMANS', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('WHILE SHE SLEEPS', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('WHITECHAPEL', '-');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('WIDE EYES', 'Banda de metalcore de Carolina del Norte, EE. UU.');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('WIDEK', 'Proyecto en solitario del guitarrista sueco Johan ''Pluto'' Raninen.');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('WILDERUN', 'Banda de metal progresivo de Boston, EE. UU.');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('WINDS OF PLAGUE', 'Banda de deathcore de Los Ángeles, EE. UU.');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('WITHIN THE RUINS', 'Banda de deathcore/progresivo de Massachusetts, EE. UU.');
INSERT INTO GRUPOS (nombre, descripcion) VALUES ('YNGWIE J. MALMSTEEN', 'Guitarrista sueco de heavy metal y neo-clásico, conocido por su virtuosismo en la guitarra eléctrica.');

commit;
