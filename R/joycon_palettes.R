#' Palettes inspired by Nintendo.
#'
#' @description Color palettes inspired by Nintendo.
#' Palettes are available in three, five, and eight colors.
#'
#' Use `joycon_list` to see all palettes available.
#'
#' @export
joycon_palettes <- list(
  # Palettes with three colors each
  DonkeyKong = c("#8c4a34", "#a86741", "#bc271a"),
  IceClimbers = c("#e281af", "#8b80e9", "#af7e58"),
  Kirby = c("#fda5cd", "#44b0ee", "#fb66ae"),
  LittleMac = c("#686a67", "#90e26f", "#1f6720"),
  MayaFey = c("#7c6c9b", "#f5e9f3", "#cf9d6d"),
  Pikachu = c("#ffd73c", "#e7a840", "#ee4d31"),
  RhythmHeaven = c("#fe9a1b", "#f5571e", "#22a8cf"),
  ThreeHouses = c("#eacd6d", "#3d3fd2", "#be2a4a"),
  Tomodachi = c("#ef6b28", "#47ae43", "#02a1d4"),
  WiiFit = c("#d9d7da", "#73bddc", "#638aa1"),
  Yoshi = c("#6fe46b", "#fe8c50", "#fb4933"),
  Zagreus = c("#802A19ff", "#4A0D0Cff", "#400001ff"), # new!
  Rowlet = c("#2DA885ff", "#CB9E81ff", "#E9C5A8ff"), # new!
  Bayleef = c("#F5E2ACff", "#A3AE72ff", "#505E42ff"), # new!
  Sylveon = c("#6294C6ff", "#B2D8EFff", "#E6A5BAff"), # new!
  Togepi = c("#BA533Dff", "#509DB9ff", "#E9D9AAff"), # new!

  ## Palettes with five colors each
  AceAttorney = c("#036db9", "#95395f", "#fde820", "#d9ad15", "#7c5600"),
  DelfinoPlaza = c("#0080de", "#00d5d3", "#fbe9b9", "#fdbc67", "#da6a44"),
  DuckHunt = c("#c94b04", "#f97661", "#3dc0ff", "#82d30c", "#005909"),
  Isabelle = c("#ab4a3b", "#ffaa55", "#ffff80", "#808000", "#a2b0ac"),
  KidIcarus = c("#433488", "#4473e8", "#79cde8", "#dfeef9", "#faed87"),
  Lucina = c("#942e2b", "#7c8aa2", "#6393bd", "#3a5789", "#2c323c"),
  LuigisMansion = c("#0b61b1", "#468caf", "#147417", "#02e109", "#cbffcb"),
  MajorasMask = c("#95d038", "#cdabd2", "#564b7f", "#e3551a", "#b10937"),
  NewHorizons = c("#c47636", "#eca759", "#f1bf2c", "#3fc3d8", "#02a47b"),
  Nintendogs = c("#bb997f", "#eda978", "#fbcfb5", "#23bdbe", "#cfeef9"),
  Pictochat = c("#3499e3", "#7ac2f6", "#dff3f8", "#fefffb", "#a8bdb2"),
  Pikmin = c("#ef6449", "#fce322", "#5eb0f5", "#d9a2d4", "#f059a2"),
  PrincessPeach = c("#ffb3e2", "#fe89a8", "#f15980", "#f8e31f", "#54c5f8"),
  RainbowRoad = c("#ff1903", "#ff1eed", "#1e24ef", "#12e2ec", "#1afc07"),
  Samus = c("#a73941", "#fdb043", "#c4ee89", "#77d9e2", "#419a8e"),
  SkywardSword = c("#d4af37", "#506538", "#7bdfd0", "#67c0fc", "#6b5ab6"),
  Splatoon = c("#fa3296", "#f75900", "#aadc00", "#00c8b4", "#c800dc"),
  StarBits = c( "#e36f46", "#ffe668", "#b9ff84", "#7890d8", "#e560f9"),
  StardewValley = c("#017fef", "#64e7e9", "#0cbb44", "#e4aa00", "#a36f00"),
  StarFox = c("#ec4368", "#f6b14f", "#f8dd2d", "#0081aa", "#19305a"),
  SuperMario = c("#e4000f", "#049cd8", "#fbd000", "#43b047", "#000000"),
  Tetris = c("#cd00cd", "#ff7800", "#ffff00", "#00ff00", "#00ffff"),
  TwilightPrincess = c("#846048","#698454", "#3e877a", "#783a77", "#c098b6"),
  WiiSports = c("#37743a", "#88B63A", "#45a7c7", "#a48e60", "#ececef"),
  Brewster = c("#647A54ff", "#3C4335ff", "#D79351ff", "#52372Bff", "#803825ff"), # new!
  SalmonRun = c("#679624ff", "#398A7Aff", "#7E5D79ff", "#EC493Fff", "#CD7068ff"), # new!
  Earthbound = c("#274B95ff", "#3FA45Cff", "#DD2255ff", "#FEBA32ff", "#9B4B6Cff"), # new!
  CousinRedd = c("#CB7D16ff", "#D79D5Fff", "#DFDC6Cff", "#33967Cff", "#207157ff"), # new!
  DaisyMae = c("#E0C599ff", "#564298ff", "#458617ff", "#FAB349ff", "#BE6431ff"), # new!
  GreatAceAttorney = c("#640A12ff", "#563842ff", "#535E7Cff", "#2C354Dff", "#687053ff"), # new!
  GreatAceAttorney2 = c("#473D38ff", "#585D72ff", "#DBC397ff", "#BB9353ff", "#7F6F73ff"), # new!
  LegendsArceus = c("#C05468ff", "#898EAAff", "#394E7Dff", "#96C096ff", "#4A6362ff"), # new!
  FamicomDetective = c("#4E242Bff", "#673549ff", "#72536Bff", "#886E8Aff", "#DCCAC2ff"), # new!
  MinMin = c("#B93614ff", "#FB9C40ff", "#2D4E34ff", "#1D6E1Aff", "#CDB80Dff"), # new!

  ## Palettes with eight colors each
  BreathOfTheWild = c("#536b83", "#8cb0bd", "#f5dfca", "#988076", "#6e7d2d", "#dfe372", "#fde4a1", "#f8c987"),
  Hyrule = c("#2c6fb4", "#2380fa", "#5ab5f5", "#b4e4f3", "#aac466", "#b5af3e", "#727f34", "#26311e"),
  KatamariDamacy = c("#6bb1d3", "#96d0e1", "#8eba55", "#aadd78", "#319535", "#ede391", "#f8acbe", "#8d2d8d"),
  Korok = c("#5b211e", "#925f4e", "#d1ac9e", "#958879", "#a3ac89", "#78875c", "#5d5536", "#9f9fa0"),
  Xenoblade = c("#0a338d", "#2f88e1", "#d0eef9", "#b9e186", "#7bac4e", "#4c625a", "#9d0b09", "#ee0014")
)
