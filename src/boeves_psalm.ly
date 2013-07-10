\version "2.16.2"

#(set-default-paper-size "letter")
#(set-global-staff-size 20)

\include "../lib/accordion_3_reed.ly"

\paper {
  ragged-bottom = ##t
}

\layout {
  ragged-last = ##t
}

\header {
  title = "Boeves Psalm"
  subtitle = "Arrangement by Christopher Canipe"
  composer = "Lars Hollmer"
  meter = "Allegro Moderato"
}

FMbassEnd = {
  fis,8 fis fis fis
  fis,8 fis fis fis
  b^"M" ( fis^"M" ) b ( fis )
}

\new GrandStaff
<<
  \relative cis'
  \new Staff {

    \override Score.BarNumber #'break-visibility = #end-of-line-invisible

    \key fis \major
    \clef treble

    \time 2/2

    R1 ^\accMaster
    R1
    R1
    R1

    \break

    R1
    R1
    R1
    r2 r4 cis4 \mp

    \break

    \repeat volta 2 {

      fis1 \<
      gis1
      ais1 
      b8 \! ( ais gis fis gis4 ) gis

      \break

      fis1 ~ fis \mf ~ fis \mp ~ fis2. \p cis4 \mp

      \break
    
      fis1 \<
      gis1
      ais1
      b8 \! ( ais gis fis gis4 ) gis
  
      \pageBreak

      fis1 \> ~
      fis2. \! ais8-3 \f ( b
      cis4 ) cis b ais
      b2. gis8 \ff ( ais

      \break

      b4 ) b cis b
      ais8-3 ( b-1 cis-4 ais-3 gis4-2 ) cis,4-1 \mp
      fis1 _\markup { \italic "rit. 2nd time" } \<
      gis1

      \break

      ais1
      b8 \! ( ais gis fis gis4 ) gis
      fis1 ~

    }  

    \alternative {
      {
        fis1 ~ \mf
        \break
        fis1 ~ \mp
        fis2. \p
        cis4 ~ \mp
      }
      {
        fis1 \repeatTie
        b8 ( ais gis fis gis4 _\markup { \italic "morendo" } ) gis (
        fis2 ) \fermata
      }
    }

    \bar "|."
  }


  \new Staff {

    \key fis \major
    \clef bass

    \time 2/2

    fis,8 ^\p ( fis_.^"M" ) fis_. fis_.
    fis,8 ( fis_.) fis_. fis_.
    fis,8 _\markup { \italic "segue l.h. phrasing throughout" } fis fis fis
    b^"M" ( fis^"M" ) b ( fis )

    fis,8 ^\mp fis^"M" fis fis
    \FMbassEnd

    fis,8 ^\mf fis^"M" fis fis
    \FMbassEnd

    fis,8 ^\f fis^"M" fis fis
    \FMbassEnd  
    
    \break

    \bar "|:"

    fis,8 fis^"M" fis fis
    fis, fis fis fis
    
    eis,_- cis'^"7" cis' cis'
    eis,_- cis' cis' cis'

    dis, dis^"m" dis dis
    dis, dis dis dis

    gis, gis^"m" gis gis
    \stemUp cis, cis'^"7" cis' cis'
    \stemNeutral

    \break
  
    fis,8 fis^"M" fis fis
    b^"M" ( fis^"M" ) b ( fis )

    fis,8 fis^"M" fis fis
    b^"M" ( fis^"M" ) b ( fis )
    
    fis,8 fis^"M" fis fis
    b^"M" ( fis^"M" ) b ( fis )
    
    fis,8 fis^"M" fis fis
    b^"M" ( fis^"M" ) b ( fis )
    
    \break

    fis,8 fis^"M" fis fis
    fis, fis fis fis
    
    eis,_- cis'^"7" cis' cis'
    eis,_- cis' cis' cis'

    dis, dis^"m" dis dis
    dis, dis dis dis

    gis, gis^"m" gis gis
    \stemUp cis, cis'^"7" cis' cis'
    \stemNeutral

    \pageBreak

    fis,8 fis^"M" fis fis
    b^"M" ( fis^"M" ) b ( fis )

    fis,8 fis^"M" fis fis
    b^"M" ( fis^"M" ) b ( fis )

    fis,8 fis^"M" fis fis
    ais,_- fis fis fis

    gis,8 gis^"m" gis gis
    dis,8 gis gis gis

    \stemUp cis,8 cis'^"7" cis' cis'
    \stemNeutral
    eis,8_- cis' cis' cis'

    fis,8 fis^"M" ais,_- fis
    \stemUp cis,8 cis'^"7" cis' cis'
    \stemNeutral
    
    fis,8 fis^"M" fis fis
    fis, fis fis fis
    
    eis,_- cis'^"7" cis' cis'
    eis,_- cis' cis' cis'

    \break

    dis, dis^"m" dis dis
    dis, dis dis dis

    gis, gis^"m" gis gis
    \stemUp cis, cis'^"7" cis' cis'
    \stemNeutral

    fis,8 fis^"M" fis fis
    b^"M" ( fis^"M" ) b ( fis )

    fis,8 fis^"M" fis fis
    b^"M" ( fis^"M" ) b ( fis )

    \break

    fis,8 fis^"M" fis fis
    b^"M" ( fis^"M" ) b ( fis )

    fis,8 fis^"M" fis fis
    b^"M" ( fis^"M" ) b ( fis )  
    
    fis,8 fis^"M" fis fis
    b^"M"-4 ( fis^"M"-3 ) b ( fis )  

    gis2.^"m"-2 cis'4^"7"-2
    fis4^"M"-3 \fermata ~ << fis4-4 fis,4-3 \fermata >> 
    
    \bar "|."
  }
>>
