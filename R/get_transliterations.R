#' Obtain table of transliterations
#' @description This function returns a data frame with transliterations for a specific language, or, a large default set of transliterations that is language agnostic. The function is primarly called by the 'unidecode' function.
#' @param language the name of the source language for the text to be processed.
#' @export get_transliterations

get_transliterations <- function(language = c("czech",
                                              "french", "fançais",
                                              "german", "deutsch",
                                              "greek",
                                              "polish", "język polski", "pl",
                                              "romanian",
                                              "slovenian",
                                              "all")){

  language <- tolower(language)
  language <- match.arg(language, several.ok = TRUE)

  if (language == "czech") {
    transliterations_CZ <-
      data.frame(from = c("Á", "á", "Č", "č", "Ď", "ď", "É", "é",
                          "Ě", "ě", "Í", "í", "Ň", "ň", "Ó", "ó",
                          "Ř", "ř", "Š", "š", "Ť", "ť", "Ú", "ú",
                          "Ů", "ů", "Ý", "ý", "Ž", "ž", "„", "“"),
                 to = c("A", "a", "C", "c", "D", "d", "E", "e",
                        "E", "e", "I", "i", "N", "n", "O", "o",
                        "R", "r", "S", "s", "T", "t", "U", "u",
                        "U", "u", "Y", "y", "Z", "z", "\"", "\""),
                 type = rep("CZ"), stringsAsFactors = FALSE)

    return(transliterations_CZ)
  }

  if (any(c("french", "français") %in% language)){
    transliterations_FR <-
      data.frame(from = c("À", "Á", "Â", "Ä", "Æ", "È", "É", "Ê",
                          "Ë", "Î", "Ï", "Í", "Ì", "Ô", "Ò", "Œ",
                          "Ü", "Ç", "à", "á", "â", "ä", "æ", "è",
                          "é", "ê", "ë", "î", "ï", "í", "ì", "ò",
                          "œ", "ü", "ç", "«", "»"),
                 to = c("A", "A", "A", "A", "Ae", "E", "E", "E",
                        "E", "I", "I", "I", "I", "O", "O", "Oe",
                        "U", "C", "a", "a", "a", "a", "ae", "e",
                        "e", "e", "e", "i", "i", "i", "i", "o",
                        "oe", "u", "c", "\"", "\""),
                 type = rep("FR"), stringsAsFactors = FALSE)

    return(transliterations_FR)
  }

  if (any(c("german", "deutsch") %in% language)){
    transliterations_DE <-
      data.frame(from = c("ß", "Ä", "Ö", "Ü", "ä", "ö", "ü"),
                 to = c("ss", "Ae", "Oe", "Ue", "ae", "oe", "ue"),
                 type = rep("DE"), stringsAsFactors = FALSE)

    return(transliterations_DE)
  }

  if (any("greek" %in% language)){
    transliterations_GR <-
      data.frame(from = c("Α", "α", "Ά", "ά", "Β", "β", "Γ", "γ",
                          "Δ", "δ", "Ε", "ε", "Έ", "έ", "Ζ", "ζ",
                          "Η", "η", "Ή", "ή", "Θ", "θ", "Ι", "ι",
                          "Ί", "ί", "Ϊ",  "ϊ", "ΐ", "Κ", "κ",
                          "Λ", "λ", "Μ", "μ", "Ν", "ν", "Ξ", "ξ",
                          "Ο", "ο", "Ό", "ό", "Π", "π", "Ρ", "ρ",
                          "Σ", "σ", "Τ", "τ", "Υ", "υ", "Ύ", "ύ",
                          "Ϋ", "ϋ", "ΰ", "Φ", "φ", "Χ", "χ",
                          "Ψ", "ψ", "Ω", "ω", "Ώ", "ώ", "ς",
                          ";", ";", "·", "‿", "΄", "΅", "͂", "̓",
                          "̓", "̔",
                          "ͅ",
                          "ει", "έι", "εί", "ευ", "έυ", "εύ",
                          "ου", "ού", "όυ"),
                 to = c("A", "a", "A", "a", "V", "v", "Y", "y",
                        "D", "d", "E", "e", "E", "e", "Z", "z",
                        "I", "i", "I", "i", "Th", "th", "I", "i",
                        "I", "i", "I", "i", "i", "K", "k",
                        "L", "l", "M", "m", "N", "n", "X", "x",
                        "O", "o", "O", "o", "P", "p", "R", "r",
                        "S", "s", "T", "t", "I", "i", "I", "i",
                        "I", "i", "i", "F", "f", "H", "h",
                        "Ps", "ps", "O", "o", "O", "o", "s",
                        "?", "?", ";", "-", "", "", "", "",
                        "", "",
                        "",
                        "i", "i", "i", "ef", "ef", "ef",
                        "u", "u", "u"),
                 type = rep("GR"), stringsAsFactors = FALSE)

    return(transliterations_GR)
  }

  if (any(c("polish", "język polski") %in% language)){
    transliterations_PL <-
      data.frame(from = c("Ą", "ą", "Ć", "ć", "Ę", "ę", "Ł", "ł",
                          "Ń", "ń", "Ó", "ó", "Ś", "ś", "Ź", "ź",
                          "Ż", "ż"),
                 to = c("A", "a", "C", "c", "E", "e", "L", "l",
                        "N", "n", "O", "o", "S", "s", "Z", "z",
                        "Z", "z"),
                 type = rep("PL"), stringsAsFactors = FALSE)

    return(transliterations_PL)
  }

  if ("romanian" %in% language){
    transliterations_RO <-
      data.frame(from = c("Ă", "ă", "Â", "â", "Î", "î", "Ș", "ș",
                          "Ş", "ş", "Ț", "ț", "Ţ", "ţ"),
                 to = c("A", "a", "A", "a", "I", "i", "S", "s",
                        "S", "s", "T", "t", "T", "t"),
                 type = rep("RO"), stringsAsFactors = FALSE)

    return(transliterations_RO)
  }

  if ("slovenian" %in% language){
    transliterations_SL <-
      data.frame(from = c("Č", "č", "É", "é", "Í", "í", "Ó", "ó",
                          "Š", "š", "Ž", "ž"),
                 to = c("C", "c", "E", "e", "I", "i", "O", "o",
                        "S", "s", "Z", "z"),
                 type = rep("SL"), stringsAsFactors = FALSE)

    return(transliterations_SL)
  }

  if (language == "all"){

    data(transliterations_all)

    return(transliterations_all)
  }
}
