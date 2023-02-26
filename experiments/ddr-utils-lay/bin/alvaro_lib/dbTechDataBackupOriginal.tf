;-------------------------------------------------
; Wed Feb 22 15:18:52 2023
; Custom Compiler Version: S-2021.09-SP2 
; Library Name: alvaro_lib 
; Export Condition: Local 
;-------------------------------------------------
controls(
;techArray(
;techArray( techReferenceNames )
;--------------------------------------
;) ;techArray

;techParams(
;( parameter           value )
;( ----------             ----- )
;) ;techParams

;techPermissions(
;( class                (read-only users)  (read & write users) )
;( ----------          -----------------     --------------------   )
;) ;techPermissions

viewTypeUnits(
;( viewType                userUnit        DBUPerUU )
;( --------                     --------           -- --------   )
  ( maskLayout		 micron 	1000	)
  ( schematic		 inch 	160	)
  ( schematicSymbol	 inch 	160	)
  ( netlist		 inch 	160	)
) ;viewTypeUnits

  mfgGridResolution(
    ( 0.005 )
  ) ;mfgGridResolution

;colors(
;( colorName  colorName ...... colorName )
;) ;colors

;leMPPControls (
; leMPPDefinition ( name           objList               spacings          masterIndex        [(exposedParameters)]) 
; ( -----             -------                ---------            ------------           ---------------------) 
; leMPPMasterPath (
;		name
;		layer   purpose
;		width   pathStyle  conn   chop
;		[exposedParameters]
;		----------------------- )
; leMPPEnclosedPath (
;		name
;		layer   purpose
;		enclosure   pathStyle  conn   chop
;		[exposedParameters]
;		[-eolEnclosure <integer | float>]
;		[-beginOffset float]
;		[-endOffset float]
;		----------------------- )
; leMPPOffsetPath (
;		name
;		layer   purpose
;		width   offset  pathStyle  conn   chop
;		[exposedParameters]
;		[-beginOffset float]
;		[-endOffset float]
;		----------------------- )
; leMPPEnclosedShape (
;		name
;		layer   purpose
;		enclosure  conn
;		[exposedParameters]
;		----------------------- )
; leMPPSubRect(
;		name
;		layer   purpose
;		width  height  conn   chop  enclosure  endOfLine   spacing   spacingType  numRows
;		[exposedParameters]
;		[-offset float]
;		[-beginOffset float]
;		[-endOffset float]
;		----------------------- )
;) ;leMPPControls

;vdrc(
;( vdrcParamName vdrcParamValue )
;( ------------- -------------- )
;) ;vdrc

) ;controls

layerDefinitions(
 techPurposes(
;( purposeName  purposeNum   abbreviation )
;(   -----------        ----------        ----------     )
( purpose_1        1                       )
( purpose_2        2                       )
( purpose_3        3                       )
( purpose_7        7                       )
( purpose_8        8                       )
( purpose_9        9                       )
( purpose_30       30                      )
( purpose_31       31                      )
( purpose_32       32                      )
( purpose_33       33                      )
( purpose_34       34                      )
( purpose_35       35                      )
( purpose_36       36                      )
( purpose_37       37                      )
( purpose_38       38                      )
( purpose_39       39                      )
( purpose_40       40                      )
( purpose_91       91                      )
( purpose_123      123                     )
( purpose_124      124                     )
( purpose_3100     3100                    )
( purpose_3101     3101                    )
 ) ;techPurposes

 techLayers(
;( layerName  layerNum   abbreviation )
;(   ---------      --------      ------------ )
( layer_3          3                       )
( layer_4          4                       )
( layer_6          6                       )
( layer_14         14                      )
( layer_15         15                      )
( layer_17         17                      )
( layer_25         25                      )
( layer_26         26                      )
( layer_30         30                      )
( layer_31         31                      )
( layer_32         32                      )
( layer_33         33                      )
( layer_34         34                      )
( layer_35         35                      )
( layer_36         36                      )
( layer_37         37                      )
( layer_38         38                      )
( layer_39         39                      )
( layer_40         40                      )
( layer_41         41                      )
( layer_42         42                      )
( layer_43         43                      )
( layer_44         44                      )
( layer_50         50                      )
( layer_51         51                      )
( layer_52         52                      )
( layer_53         53                      )
( layer_54         54                      )
( layer_55         55                      )
( layer_56         56                      )
( layer_57         57                      )
( layer_58         58                      )
( layer_59         59                      )
( layer_60         60                      )
( layer_61         61                      )
( layer_62         62                      )
( layer_63         63                      )
( layer_70         70                      )
( layer_77         77                      )
( layer_78         78                      )
( layer_109        109                     )
( layer_150        150                     )
( layer_283        283                     )
( layer_284        284                     )
( layer_305        305                     )
( layer_311        311                     )
( layer_315        315                     )
( layer_354        354                     )
( layer_477        477                     )
( layer_478        478                     )
( layer_2010       2010                    )
( layer_2011       2011                    )
( layer_2012       2012                    )
( layer_2013       2013                    )
 ) ;techLayers

 techLayerPurposePriorities(
;(  layerName   purposeName  )
;(   ---------        ------------     )
( background       drawing          )
( layer_109        purpose_91       )
( layer_14         purpose_1        )
( layer_15         purpose_1        )
( layer_150        drawing          )
( layer_150        purpose_30       )
( layer_150        purpose_31       )
( layer_150        purpose_32       )
( layer_150        purpose_33       )
( layer_150        purpose_34       )
( layer_150        purpose_35       )
( layer_150        purpose_36       )
( layer_150        purpose_37       )
( layer_150        purpose_38       )
( layer_150        purpose_39       )
( layer_150        purpose_40       )
( layer_17         purpose_1        )
( layer_2010       drawing          )
( layer_2011       drawing          )
( layer_2011       pin              )
( layer_2012       drawing          )
( layer_2013       drawing          )
( layer_2013       pin              )
( layer_2013       purpose_123      )
( layer_2013       purpose_124      )
( layer_2013       purpose_3100     )
( layer_2013       purpose_3101     )
( layer_25         drawing          )
( layer_26         drawing          )
( layer_283        drawing1         )
( layer_283        drawing3         )
( layer_283        drawing4         )
( layer_283        drawing8         )
( layer_284        drawing1         )
( layer_284        drawing2         )
( layer_284        drawing5         )
( layer_284        drawing6         )
( layer_3          drawing          )
( layer_30         drawing          )
( layer_30         purpose_2        )
( layer_30         purpose_3        )
( layer_30         purpose_8        )
( layer_30         purpose_9        )
( layer_305        drawing1         )
( layer_305        drawing2         )
( layer_31         drawing          )
( layer_31         purpose_2        )
( layer_31         purpose_3        )
( layer_31         purpose_8        )
( layer_31         purpose_9        )
( layer_311        drawing1         )
( layer_315        drawing1         )
( layer_315        drawing2         )
( layer_32         drawing          )
( layer_32         purpose_2        )
( layer_32         purpose_3        )
( layer_32         purpose_8        )
( layer_32         purpose_9        )
( layer_33         drawing          )
( layer_33         pin              )
( layer_33         purpose_2        )
( layer_33         purpose_3        )
( layer_33         purpose_8        )
( layer_33         purpose_9        )
( layer_34         drawing          )
( layer_34         pin              )
( layer_34         purpose_2        )
( layer_34         purpose_3        )
( layer_34         purpose_8        )
( layer_34         purpose_9        )
( layer_35         drawing          )
( layer_35         pin              )
( layer_35         purpose_1        )
( layer_35         purpose_7        )
( layer_354        drawing2         )
( layer_36         drawing          )
( layer_36         pin              )
( layer_36         purpose_1        )
( layer_36         purpose_7        )
( layer_37         drawing          )
( layer_37         pin              )
( layer_37         purpose_1        )
( layer_37         purpose_7        )
( layer_38         drawing          )
( layer_38         purpose_1        )
( layer_38         purpose_7        )
( layer_39         drawing          )
( layer_39         pin              )
( layer_39         purpose_1        )
( layer_39         purpose_7        )
( layer_4          purpose_1        )
( layer_40         drawing          )
( layer_40         pin              )
( layer_40         purpose_1        )
( layer_40         purpose_7        )
( layer_41         drawing          )
( layer_42         drawing          )
( layer_43         drawing          )
( layer_44         drawing          )
( layer_477        purpose_1        )
( layer_478        purpose_1        )
( layer_50         drawing          )
( layer_50         purpose_7        )
( layer_51         drawing          )
( layer_51         purpose_7        )
( layer_52         drawing          )
( layer_52         purpose_7        )
( layer_53         drawing          )
( layer_53         purpose_7        )
( layer_54         drawing          )
( layer_54         purpose_1        )
( layer_55         drawing          )
( layer_55         purpose_1        )
( layer_56         drawing          )
( layer_56         purpose_1        )
( layer_57         drawing          )
( layer_57         purpose_1        )
( layer_58         drawing          )
( layer_58         purpose_1        )
( layer_59         drawing          )
( layer_59         purpose_1        )
( layer_6          purpose_1        )
( layer_60         drawing          )
( layer_61         drawing          )
( layer_62         drawing          )
( layer_63         drawing          )
( layer_70         purpose_1        )
( layer_77         purpose_1        )
( layer_78         purpose_1        )
( grid             drawing          )
( grid             drawing1         )
( grid             object           )
( annotate         drawing          )
( annotate         drawing1         )
( annotate         drawing2         )
( annotate         drawing3         )
( annotate         drawing4         )
( annotate         drawing5         )
( annotate         drawing6         )
( annotate         drawing7         )
( annotate         drawing8         )
( annotate         drawing9         )
( instance         drawing          )
( instance         label            )
( prBoundary       drawing          )
( prBoundary       boundary         )
( prBoundary       label            )
( align            drawing          )
( hardFence        drawing          )
( softFence        drawing          )
( text             drawing          )
( text             drawing1         )
( text             drawing2         )
( border           drawing          )
( border           boundary         )
( border           steiner          )
( device           drawing          )
( device           label            )
( device           drawing1         )
( device           drawing2         )
( device           annotate         )
( wire             drawing          )
( wire             label            )
( wire             flight           )
( pin              label            )
( pin              drawing          )
( pin              annotate         )
( axis             drawing          )
( edgeLayer        drawing          )
( edgeLayer        pin              )
( snap             drawing          )
( snap             boundary         )
( stretch          drawing          )
( y0               drawing          )
( y1               drawing          )
( y2               drawing          )
( y3               drawing          )
( y4               drawing          )
( y5               drawing          )
( y6               drawing          )
( y7               drawing          )
( y8               drawing          )
( y9               drawing          )
( y0               flight           )
( y1               flight           )
( y2               flight           )
( y3               flight           )
( y4               flight           )
( y5               flight           )
( y6               flight           )
( y7               flight           )
( y8               flight           )
( y9               flight           )
( hilite           drawing          )
( hilite           drawing1         )
( hilite           drawing2         )
( hilite           drawing3         )
( hilite           drawing4         )
( hilite           drawing5         )
( hilite           drawing6         )
( hilite           drawing7         )
( hilite           drawing8         )
( hilite           drawing9         )
( select           drawing          )
( drive            drawing          )
( hiz              drawing          )
( resist           drawing          )
( spike            drawing          )
( supply           drawing          )
( unknown          drawing          )
( unset            drawing          )
( designFlow       drawing          )
( designFlow       drawing1         )
( designFlow       drawing2         )
( designFlow       drawing3         )
( designFlow       drawing4         )
( designFlow       drawing5         )
( designFlow       drawing6         )
( designFlow       drawing7         )
( designFlow       drawing8         )
( designFlow       drawing9         )
( changedLayer     tool0            )
( changedLayer     tool1            )
( marker           warning          )
( marker           error            )
( marker           annotate         )
( marker           info             )
( marker           ackWarn          )
( marker           soError          )
( marker           soCritical       )
( marker           critical         )
( marker           fatal            )
( Row              drawing          )
( Row              label            )
( Row              boundary         )
( Group            drawing          )
( Group            label            )
( Group            boundary         )
( Cannotoccupy     drawing          )
( Cannotoccupy     boundary         )
( Canplace         drawing          )
( Unrouted         drawing          )
( Unrouted         drawing1         )
( Unrouted         drawing2         )
( Unrouted         drawing3         )
( Unrouted         drawing4         )
( Unrouted         drawing5         )
( Unrouted         drawing6         )
( Unrouted         drawing7         )
( Unrouted         drawing8         )
( Unrouted         drawing9         )
( Unrouted         track            )
( PinBorder        substrate        )
( PinBorder        blockage         )
( PinBorder        control          )
( PinBorder        softBdry         )
( PinBorder        warning          )
( PinBorder        tool             )
( PinBorder        label            )
( PinBorder        flight           )
( PinBorder        annotate         )
( PinBorder        boundary         )
( PinBorder        pin              )
( PinBorder        drawing          )
( PinBorder        net              )
( PinBorder        cell             )
( border           track            )
( snpsTrunk        drawing          )
( snpsTrunk        drawing1         )
( snpsTrunk        drawing2         )
( snpsTrunk        drawing3         )
( snpsTrunk        drawing4         )
( snpsTrunk        drawing5         )
( snpsTrunk        drawing6         )
( snpsTrunk        drawing7         )
( snpsTrunk        drawing8         )
( snpsTrunk        drawing9         )
( snpsTapoff       drawing          )
( snpsTapoff       drawing1         )
( snpsTapoff       drawing2         )
( snpsTapoff       drawing3         )
( snpsTapoff       drawing4         )
( snpsTapoff       drawing5         )
( snpsTapoff       drawing6         )
( snpsTapoff       drawing7         )
( snpsTapoff       drawing8         )
( snpsTapoff       drawing9         )
) ;techLayerPurposePriorities

techDisplays(
;(lLayerName purposeName  packet  vis sel   con2ChgLy   drgEnbl  valid  [visibleOnly  [static]])
;(   ---------        -------           ------   --- ---    ------------     -------    -----  -- --)
( background       drawing          background      	t nil t nil nil  )
( layer_109        purpose_91       layer_109_purpose_91	t t nil nil t  )
( layer_14         purpose_1        layer_14_purpose_1	t t nil nil t  )
( layer_15         purpose_1        layer_15_purpose_1	t t nil nil t  )
( layer_150        drawing          layer_150_drawing	t t nil nil t  )
( layer_150        purpose_30       layer_150_purpose_30	t t nil nil t  )
( layer_150        purpose_31       layer_150_purpose_31	t t nil nil t  )
( layer_150        purpose_32       layer_150_purpose_32	t t nil nil t  )
( layer_150        purpose_33       layer_150_purpose_33	t t nil nil t  )
( layer_150        purpose_34       layer_150_purpose_34	t t nil nil t  )
( layer_150        purpose_35       layer_150_purpose_35	t t nil nil t  )
( layer_150        purpose_36       layer_150_purpose_36	t t nil nil t  )
( layer_150        purpose_37       layer_150_purpose_37	t t nil nil t  )
( layer_150        purpose_38       layer_150_purpose_38	t t nil nil t  )
( layer_150        purpose_39       layer_150_purpose_39	t t nil nil t  )
( layer_150        purpose_40       layer_150_purpose_40	t t nil nil t  )
( layer_17         purpose_1        layer_17_purpose_1	t t nil nil t  )
( layer_2010       drawing          layer_2010_drawing	t t nil nil t  )
( layer_2011       drawing          layer_2011_drawing	t t nil nil t  )
( layer_2011       pin              layer_2011_pin  	t t nil nil t  )
( layer_2012       drawing          layer_2012_drawing	t t nil nil t  )
( layer_2013       drawing          layer_2013_drawing	t t nil nil t  )
( layer_2013       pin              layer_2013_pin  	t t nil nil t  )
( layer_2013       purpose_123      layer_2013_purpose_123	t t nil nil t  )
( layer_2013       purpose_124      layer_2013_purpose_124	t t nil nil t  )
( layer_2013       purpose_3100     layer_2013_purpose_3100	t t nil nil t  )
( layer_2013       purpose_3101     layer_2013_purpose_3101	t t nil nil t  )
( layer_25         drawing          layer_25_drawing	t t nil nil t  )
( layer_26         drawing          layer_26_drawing	t t nil nil t  )
( layer_283        drawing1         layer_283_drawing1	t t nil nil t  )
( layer_283        drawing3         layer_283_drawing3	t t nil nil t  )
( layer_283        drawing4         layer_283_drawing4	t t nil nil t  )
( layer_283        drawing8         layer_283_drawing8	t t nil nil t  )
( layer_284        drawing1         layer_284_drawing1	t t nil nil t  )
( layer_284        drawing2         layer_284_drawing2	t t nil nil t  )
( layer_284        drawing5         layer_284_drawing5	t t nil nil t  )
( layer_284        drawing6         layer_284_drawing6	t t nil nil t  )
( layer_3          drawing          layer_3_drawing 	t t nil nil t  )
( layer_30         drawing          layer_30_drawing	t t nil nil t  )
( layer_30         purpose_2        layer_30_purpose_2	t t nil nil t  )
( layer_30         purpose_3        layer_30_purpose_3	t t nil nil t  )
( layer_30         purpose_8        layer_30_purpose_8	t t nil nil t  )
( layer_30         purpose_9        layer_30_purpose_9	t t nil nil t  )
( layer_305        drawing1         layer_305_drawing1	t t nil nil t  )
( layer_305        drawing2         layer_305_drawing2	t t nil nil t  )
( layer_31         drawing          layer_31_drawing	t t nil nil t  )
( layer_31         purpose_2        layer_31_purpose_2	t t nil nil t  )
( layer_31         purpose_3        layer_31_purpose_3	t t nil nil t  )
( layer_31         purpose_8        layer_31_purpose_8	t t nil nil t  )
( layer_31         purpose_9        layer_31_purpose_9	t t nil nil t  )
( layer_311        drawing1         layer_311_drawing1	t t nil nil t  )
( layer_315        drawing1         layer_315_drawing1	t t nil nil t  )
( layer_315        drawing2         layer_315_drawing2	t t nil nil t  )
( layer_32         drawing          layer_32_drawing	t t nil nil t  )
( layer_32         purpose_2        layer_32_purpose_2	t t nil nil t  )
( layer_32         purpose_3        layer_32_purpose_3	t t nil nil t  )
( layer_32         purpose_8        layer_32_purpose_8	t t nil nil t  )
( layer_32         purpose_9        layer_32_purpose_9	t t nil nil t  )
( layer_33         drawing          layer_33_drawing	t t nil nil t  )
( layer_33         pin              layer_33_pin    	t t nil nil t  )
( layer_33         purpose_2        layer_33_purpose_2	t t nil nil t  )
( layer_33         purpose_3        layer_33_purpose_3	t t nil nil t  )
( layer_33         purpose_8        layer_33_purpose_8	t t nil nil t  )
( layer_33         purpose_9        layer_33_purpose_9	t t nil nil t  )
( layer_34         drawing          layer_34_drawing	t t nil nil t  )
( layer_34         pin              layer_34_pin    	t t nil nil t  )
( layer_34         purpose_2        layer_34_purpose_2	t t nil nil t  )
( layer_34         purpose_3        layer_34_purpose_3	t t nil nil t  )
( layer_34         purpose_8        layer_34_purpose_8	t t nil nil t  )
( layer_34         purpose_9        layer_34_purpose_9	t t nil nil t  )
( layer_35         drawing          layer_35_drawing	t t nil nil t  )
( layer_35         pin              layer_35_pin    	t t nil nil t  )
( layer_35         purpose_1        layer_35_purpose_1	t t nil nil t  )
( layer_35         purpose_7        layer_35_purpose_7	t t nil nil t  )
( layer_354        drawing2         layer_354_drawing2	t t nil nil t  )
( layer_36         drawing          layer_36_drawing	t t nil nil t  )
( layer_36         pin              layer_36_pin    	t t nil nil t  )
( layer_36         purpose_1        layer_36_purpose_1	t t nil nil t  )
( layer_36         purpose_7        layer_36_purpose_7	t t nil nil t  )
( layer_37         drawing          layer_37_drawing	t t nil nil t  )
( layer_37         pin              layer_37_pin    	t t nil nil t  )
( layer_37         purpose_1        layer_37_purpose_1	t t nil nil t  )
( layer_37         purpose_7        layer_37_purpose_7	t t nil nil t  )
( layer_38         drawing          layer_38_drawing	t t nil nil t  )
( layer_38         purpose_1        layer_38_purpose_1	t t nil nil t  )
( layer_38         purpose_7        layer_38_purpose_7	t t nil nil t  )
( layer_39         drawing          layer_39_drawing	t t nil nil t  )
( layer_39         pin              layer_39_pin    	t t nil nil t  )
( layer_39         purpose_1        layer_39_purpose_1	t t nil nil t  )
( layer_39         purpose_7        layer_39_purpose_7	t t nil nil t  )
( layer_4          purpose_1        layer_4_purpose_1	t t nil nil t  )
( layer_40         drawing          layer_40_drawing	t t nil nil t  )
( layer_40         pin              layer_40_pin    	t t nil nil t  )
( layer_40         purpose_1        layer_40_purpose_1	t t nil nil t  )
( layer_40         purpose_7        layer_40_purpose_7	t t nil nil t  )
( layer_41         drawing          layer_41_drawing	t t nil nil t  )
( layer_42         drawing          layer_42_drawing	t t nil nil t  )
( layer_43         drawing          layer_43_drawing	t t nil nil t  )
( layer_44         drawing          layer_44_drawing	t t nil nil t  )
( layer_477        purpose_1        layer_477_purpose_1	t t nil nil t  )
( layer_478        purpose_1        layer_478_purpose_1	t t nil nil t  )
( layer_50         drawing          layer_50_drawing	t t nil nil t  )
( layer_50         purpose_7        layer_50_purpose_7	t t nil nil t  )
( layer_51         drawing          layer_51_drawing	t t nil nil t  )
( layer_51         purpose_7        layer_51_purpose_7	t t nil nil t  )
( layer_52         drawing          layer_52_drawing	t t nil nil t  )
( layer_52         purpose_7        layer_52_purpose_7	t t nil nil t  )
( layer_53         drawing          layer_53_drawing	t t nil nil t  )
( layer_53         purpose_7        layer_53_purpose_7	t t nil nil t  )
( layer_54         drawing          layer_54_drawing	t t nil nil t  )
( layer_54         purpose_1        layer_54_purpose_1	t t nil nil t  )
( layer_55         drawing          layer_55_drawing	t t nil nil t  )
( layer_55         purpose_1        layer_55_purpose_1	t t nil nil t  )
( layer_56         drawing          layer_56_drawing	t t nil nil t  )
( layer_56         purpose_1        layer_56_purpose_1	t t nil nil t  )
( layer_57         drawing          layer_57_drawing	t t nil nil t  )
( layer_57         purpose_1        layer_57_purpose_1	t t nil nil t  )
( layer_58         drawing          layer_58_drawing	t t nil nil t  )
( layer_58         purpose_1        layer_58_purpose_1	t t nil nil t  )
( layer_59         drawing          layer_59_drawing	t t nil nil t  )
( layer_59         purpose_1        layer_59_purpose_1	t t nil nil t  )
( layer_6          purpose_1        layer_6_purpose_1	t t nil nil t  )
( layer_60         drawing          layer_60_drawing	t t nil nil t  )
( layer_61         drawing          layer_61_drawing	t t nil nil t  )
( layer_62         drawing          layer_62_drawing	t t nil nil t  )
( layer_63         drawing          layer_63_drawing	t t nil nil t  )
( layer_70         purpose_1        layer_70_purpose_1	t t nil nil t  )
( layer_77         purpose_1        layer_77_purpose_1	t t nil nil t  )
( layer_78         purpose_1        layer_78_purpose_1	t t nil nil t  )
( grid             drawing          grid            	t nil t nil nil  )
( grid             drawing1         grid1           	t nil t nil nil  )
( grid             object           FinGrid         	t t nil nil nil  )
( annotate         drawing          annotate        	t t t t nil  )
( annotate         drawing1         annotate1       	t t t t nil  )
( annotate         drawing2         annotate2       	t t t t nil  )
( annotate         drawing3         annotate3       	t t t t nil  )
( annotate         drawing4         annotate4       	t t t t nil  )
( annotate         drawing5         annotate5       	t t t t nil  )
( annotate         drawing6         annotate6       	t t t t nil  )
( annotate         drawing7         annotate7       	t t t t nil  )
( annotate         drawing8         annotate8       	t t t t nil  )
( annotate         drawing9         annotate9       	nil t t t nil  )
( instance         drawing          instance        	t t t t nil  )
( instance         label            instanceLbl     	t t t t nil  )
( prBoundary       drawing          prBoundary      	t t t t nil  )
( prBoundary       boundary         prBoundaryBnd   	t t t t nil  )
( prBoundary       label            prBoundaryLbl   	t t t t nil  )
( align            drawing          align           	t t t t nil  )
( hardFence        drawing          hardFence       	t t t t nil  )
( softFence        drawing          softFence       	t t t t nil  )
( text             drawing          text            	t t t t t  )
( text             drawing1         text1           	t t t t nil  )
( text             drawing2         text2           	t t t t nil  )
( border           drawing          border          	t t t t nil  )
( border           boundary         area            	t nil t t nil  )
( border           steiner          steiner         	t t t t nil  )
( device           drawing          device          	t t t t nil  )
( device           label            deviceLbl       	t t t t nil  )
( device           drawing1         device1         	t t t t nil  )
( device           drawing2         device2         	t t t t nil  )
( device           annotate         deviceAnt       	t t t t nil  )
( wire             drawing          wire            	t t t t nil  )
( wire             label            wireLbl         	t t t t nil  )
( wire             flight           wireFlt         	t t t t nil  )
( pin              label            pinLbl          	t t t t nil  )
( pin              drawing          pin             	t t t t nil  )
( pin              annotate         pinAnt          	t t t t nil  )
( axis             drawing          axis            	t nil t t nil  )
( edgeLayer        drawing          edgeLayer       	t t t t nil  )
( edgeLayer        pin              edgeLayerPin    	t t t t nil  )
( snap             drawing          snap            	t t t t nil  )
( snap             boundary         snap            	t nil t t nil  )
( stretch          drawing          stretch         	t t t t nil  )
( y0               drawing          y0              	t t t t nil  )
( y1               drawing          y1              	t t t t nil  )
( y2               drawing          y2              	t t t t nil  )
( y3               drawing          y3              	t t t t nil  )
( y4               drawing          y4              	t t t t nil  )
( y5               drawing          y5              	t t t t nil  )
( y6               drawing          y6              	t t t t nil  )
( y7               drawing          y7              	t t t t nil  )
( y8               drawing          y8              	t t t t nil  )
( y9               drawing          y9              	t t t t nil  )
( y0               flight           y0Flt           	t t t t nil  )
( y1               flight           y1Flt           	t t t t nil  )
( y2               flight           y2Flt           	t t t t nil  )
( y3               flight           y3Flt           	t t t t nil  )
( y4               flight           y4Flt           	t t t t nil  )
( y5               flight           y5Flt           	t t t t nil  )
( y6               flight           y6Flt           	t t t t nil  )
( y7               flight           y7Flt           	t t t t nil  )
( y8               flight           y8Flt           	t t t t nil  )
( y9               flight           y9Flt           	t t t t nil  )
( hilite           drawing          hilite          	t t t t nil  )
( hilite           drawing1         hilite1         	t t t t nil  )
( hilite           drawing2         hilite2         	t t t t nil  )
( hilite           drawing3         hilite3         	t t t t nil  )
( hilite           drawing4         hilite4         	t t t t nil  )
( hilite           drawing5         hilite5         	t t t t nil  )
( hilite           drawing6         hilite6         	t t t t nil  )
( hilite           drawing7         hilite7         	t t t t nil  )
( hilite           drawing8         hilite8         	t t t t nil  )
( hilite           drawing9         hilite9         	t t t t nil  )
( select           drawing          select          	t t t t nil  )
( drive            drawing          drive           	t t t t nil  )
( hiz              drawing          hiz             	t t t t nil  )
( resist           drawing          resist          	t t t t nil  )
( spike            drawing          spike           	t t t t nil  )
( supply           drawing          supply          	t t t t nil  )
( unknown          drawing          unknown         	t t t t nil  )
( unset            drawing          unset           	t t t t nil  )
( designFlow       drawing          designFlow      	t t t nil nil  )
( designFlow       drawing1         designFlow1     	t t t nil nil  )
( designFlow       drawing2         designFlow2     	t t t nil nil  )
( designFlow       drawing3         designFlow3     	t t t nil nil  )
( designFlow       drawing4         designFlow4     	t t t nil nil  )
( designFlow       drawing5         designFlow5     	t t t nil nil  )
( designFlow       drawing6         designFlow6     	t t t nil nil  )
( designFlow       drawing7         designFlow7     	t t t nil nil  )
( designFlow       drawing8         designFlow8     	t t t nil nil  )
( designFlow       drawing9         designFlow9     	t t t nil nil  )
( changedLayer     tool0            changedLayerTl0 	nil nil t nil nil  )
( changedLayer     tool1            changedLayerTl1 	nil nil t nil nil  )
( marker           warning          markerWarn      	t t t t nil  )
( marker           error            markerErr       	t t t t nil  )
( marker           annotate         markerAno       	t t t t nil  )
( marker           info             markerInf       	t t t t nil  )
( marker           ackWarn          markerAck       	t t t t nil  )
( marker           soError          markerSer       	t t t t nil  )
( marker           soCritical       markerScr       	t t t t nil  )
( marker           critical         markerCrt       	t t t t nil  )
( marker           fatal            markerFat       	t t t t nil  )
( Row              drawing          Row             	t t t t nil  )
( Row              label            RowLbl          	t nil t t nil  )
( Row              boundary         RowBnd          	t t t t nil  )
( Group            drawing          Group           	t t t t nil  )
( Group            label            GroupLbl        	t nil t t nil  )
( Group            boundary         GroupBnd        	t nil t t nil  )
( Cannotoccupy     drawing          Cannotoccupy    	t t t t nil  )
( Cannotoccupy     boundary         CannotoccupyBnd 	t t t t nil  )
( Canplace         drawing          Canplace        	t t t t nil  )
( Unrouted         drawing          Unrouted        	t t t t nil  )
( Unrouted         drawing1         Unrouted1       	t t t t nil  )
( Unrouted         drawing2         Unrouted2       	t t t t nil  )
( Unrouted         drawing3         Unrouted3       	t t t t nil  )
( Unrouted         drawing4         Unrouted4       	t t t t nil  )
( Unrouted         drawing5         Unrouted5       	t t t t nil  )
( Unrouted         drawing6         Unrouted6       	t t t t nil  )
( Unrouted         drawing7         Unrouted7       	t t t t nil  )
( Unrouted         drawing8         Unrouted8       	t t t t nil  )
( Unrouted         drawing9         Unrouted9       	t t t t nil  )
( Unrouted         track            UnroutedTrk     	t t t t nil  )
( PinBorder        substrate        PinBorder_substrate	t t nil nil t  )
( PinBorder        blockage         PinBorder_blockage	t t nil nil nil  )
( PinBorder        control          PinBorder_control	t t nil nil nil  )
( PinBorder        softBdry         PinBorder_softBdry	t t nil nil t  )
( PinBorder        warning          PinBorder_warning	t t nil nil t  )
( PinBorder        tool             PinBorder_tool  	t nil nil nil nil  )
( PinBorder        label            PinBorder_label 	t t nil nil nil  )
( PinBorder        flight           PinBorder_flight	t t nil nil nil  )
( PinBorder        annotate         routeGuide_annotate	t t nil nil nil  )
( PinBorder        boundary         PinBorder_boundary	t t nil nil t  )
( PinBorder        pin              PinBorder_pin   	t t nil nil nil  )
( PinBorder        drawing          PinBorder_drawing	t nil nil nil nil  )
( PinBorder        net              PinBorder_net   	t t nil nil t  )
( PinBorder        cell             CoreBdry_cell   	t t nil nil t  )
( border           track            track           	t t t t nil  )
( snpsTrunk        drawing          routeTrunk      	t t nil nil nil  )
( snpsTrunk        drawing1         routeTrunk1     	t t nil nil nil  )
( snpsTrunk        drawing2         routeTrunk2     	t t nil nil nil  )
( snpsTrunk        drawing3         routeTrunk3     	t t nil nil nil  )
( snpsTrunk        drawing4         routeTrunk4     	t t nil nil nil  )
( snpsTrunk        drawing5         routeTrunk5     	t t nil nil nil  )
( snpsTrunk        drawing6         routeTrunk6     	t t nil nil nil  )
( snpsTrunk        drawing7         routeTrunk7     	t t nil nil nil  )
( snpsTrunk        drawing8         routeTrunk8     	t t nil nil nil  )
( snpsTrunk        drawing9         routeTrunk9     	t t nil nil nil  )
( snpsTapoff       drawing          routeTapoff     	t t nil nil nil  )
( snpsTapoff       drawing1         routeTapoff1    	t t nil nil nil  )
( snpsTapoff       drawing2         routeTapoff2    	t t nil nil nil  )
( snpsTapoff       drawing3         routeTapoff3    	t t nil nil nil  )
( snpsTapoff       drawing4         routeTapoff4    	t t nil nil nil  )
( snpsTapoff       drawing5         routeTapoff5    	t t nil nil nil  )
( snpsTapoff       drawing6         routeTapoff6    	t t nil nil nil  )
( snpsTapoff       drawing7         routeTapoff7    	t t nil nil nil  )
( snpsTapoff       drawing8         routeTapoff8    	t t nil nil nil  )
( snpsTapoff       drawing9         routeTapoff9    	t t nil nil nil  )
) ;techDisplays

;techLayerProperties(
;( propName     layer1/lpp1  [layer2/lpp2]      propValue )
;( --------            ------           ----------            ---------   )
;) ;techLayerProperties

;techDerivedLayers(
;( derivedLayerName    layerNum   (operator layer1 [layer2] [params])  ) 
;(   -------------------       ---------     --------    ----     ------      -------     ) 
;) ;techDerivedLayers

) ;layerDefinitions

layerRules(
;functions(
;( layer     function     [maskNumber   [numberOfColorMasks [defaultColor]]]  [-fullColor <bool>  [-recognitionPurposes (purposeName ...)]])
;( -----     --------      ---------     --------------      -----------       ---------            -----------)
;) ;functions

 mfgResolutions(
;( layer         mfgResolution )
;( -----           -------------    )
( layer_3            0.005 )
( layer_4            0.005 )
( layer_6            0.005 )
( layer_14           0.005 )
( layer_15           0.005 )
( layer_17           0.005 )
( layer_25           0.005 )
( layer_26           0.005 )
( layer_30           0.005 )
( layer_31           0.005 )
( layer_32           0.005 )
( layer_33           0.005 )
( layer_34           0.005 )
( layer_35           0.005 )
( layer_36           0.005 )
( layer_37           0.005 )
( layer_38           0.005 )
( layer_39           0.005 )
( layer_40           0.005 )
( layer_41           0.005 )
( layer_42           0.005 )
( layer_43           0.005 )
( layer_44           0.005 )
( layer_50           0.005 )
( layer_51           0.005 )
( layer_52           0.005 )
( layer_53           0.005 )
( layer_54           0.005 )
( layer_55           0.005 )
( layer_56           0.005 )
( layer_57           0.005 )
( layer_58           0.005 )
( layer_59           0.005 )
( layer_60           0.005 )
( layer_61           0.005 )
( layer_62           0.005 )
( layer_63           0.005 )
( layer_70           0.005 )
( layer_77           0.005 )
( layer_78           0.005 )
( layer_109          0.005 )
( layer_150          0.005 )
( layer_283          0.005 )
( layer_284          0.005 )
( layer_305          0.005 )
( layer_311          0.005 )
( layer_315          0.005 )
( layer_354          0.005 )
( layer_477          0.005 )
( layer_478          0.005 )
( layer_2010         0.005 )
( layer_2011         0.005 )
( layer_2012         0.005 )
( layer_2013         0.005 )
 ) ;mfgResolutions

;viaLayers(
;) ;viaLayers

;routingDirections(
;( layer         direction  )
;( -----          --------    )
;) ;routingDirections

;currentDensities(
;( currentDensityName      layerName      value ) 
;( ---------------------          ---------         ----- ) 
;) ;currentDensities

;cutClasses(
;( layerName 
;  ( className [-numCuts numCuts] [-minWidth] [-minLength] (width length) [-comment ["rule_id"] "string"] )
;) 
;) ;cutClasses

;trackDefs(
;tracks(
;  (trackName -type <default | reserved | nonReserved> -offset <float> [-width <float>] [-color <string>]
;  [-sigType <all | power | ground | clock | signal | tieoff | tieHi | tieLo | analog | scan | reset>] [-visible <bool>] [-active <bool>]
;  [-gridOffsetLow <float>] [-gridOffsetHigh <float>] [-gridPointsLow (<float>...)] [-gridPointsHigh (<float>...)])
;);tracks

;groups(
;  (name layer (trackName ...) -direction <horizontal | vertical> -pitch (<float> <float>)
;  [-allowCrossBoundary <bool>])
;);groups

;regions(
;  (name (groupName ...) 
;  [-flip (<bool> <bool>)|-flipGroups (groupName...) [-flipGroupsFirst (groupName...)] [-groupFlipTarget tile | region]] 
;  [-minCount (<int> <int>)] [-maxCount (<int> <int>)] [-autoCreateGlobalRegion <bool>] 
;  [-snapGrid (<float> <float>)] [-snapOffset (<float> <float>)] 
;  [-defaultTracksVisible default | false | true] [-defaultTracksActive default | false | true] 
;  [-groupEnclosure (<float> <float>)] [-enclosedGroups (groupName...)] 
;  [-flipTilesX <bool> [-flipTilesXFirst <bool>]] [-flipTilesY <bool> [-flipTilesYFirst <bool>]] )
;);regions

;boundaryTrackData(
; (name -width <float> -space <float> -type <default | reserved | nonReserved> [-color <string>])
;);boundaryTrackData

;boundaryTracks(
; (name layer (boundaryTrackDataName...) -direction <horizontal | vertical>)
;);boundaryTracks

;boundaryTrackRegions(
; (name (boundaryTrackName...) -boundaryLPP (<string> <string>) -minEnclosure (<float> <float>)
;  [-tileWidth <float>] [-tileHeight <float>] [-minNumTiles (<int> <int>)])
;);boundaryTrackRegions

;) ;trackDefs

;trackPatternDefs(
;  trackPatternDef(name layer|(layer purpose) type spacingDirection trackPitch [width [(numTracks blockPitch) [offset [visible [active [autoGenerateTrack [color]]]]]]])
;) ;trackPatternDefs

;colorClasses(
;( layer [derived] 
;  ( color  colorLayer | (colorLayer colorPurpose ) )
;) 
;) ;colorClasses

;wideAlignments(
;( width pitch [distance [global]] [-groups <array> [-groupShapes ( grpLayer | (grpLayer grpPurpose) (spacing height) ... )]]
;  [-endShapes ( endLayer | (endLayer endPurpose) endExtension | (bottom-extension top-extension) )]
;  [-stepY step]
;  wideTrackLayer | (wideTrackLayer wideTrackPurpose ) 
;  ( boundaryLayer | (boundaryLayer bounaryPurpose )  extension|(extension upperExtension) minNumTrack )
;  ( deviceLayer | (deviceLayer devicePurpose )  extension minNumTrack ) [-comment ["rule_id"] "description"]) 
;) ;wideAlignments

;pinTextLayers(
;( (shape lpp) (text lpp) (pin lpp))
;) ;pinTextLayers

;voltageTextLayers(
;( (object LPP) (minVoltage LPP) (maxVoltage LPP) )
;) ;voltageTextLayers

) ;layerRules

;viaDefs(
;standardViaDefs(
;(viaDefName  layer1  layer2  (cutLayer cutWidth cutHeight [resistancePerCut])
;(cutRows   cutCol  (cutSpacing))
;(layer1Enc) (layer2Enc) (layer1Offset)  (layer2Offset)  (origOffset)
;[implant1   (implant1Enc)  [implant2  (implant2Enc) [wellsublayer]]])
;( -------------------------------------------------------------------------- )
;) ;standardViaDefs

;standardViaVariants(
;(viaVariantName  standardViadefName [-cutLayer <string>] [-cutWidth <float>] [-cutHeight <float>]
;[-cutRows <int>] [-cutColumns <int>] [-cutSpacing (<float> <float>)]
;[-layer1Enc (<float> <float>)] [-layer2Enc (<float> <float>)] 
;[-layer1Offset (<float> <float>)] [-layer2Offset (<float> <float>)] [-originOffset (<float> <float>)]
;[-implant1Enc (<float> <float>)] [-implant2Enc (<float> <float>)] ) 
;( -------------------------------------------------------------------------- )
;) ;standardViaVariants 

;customViaDefs(
;( viaDefName libName cellName viewName layer1 layer2 resistancePerCut)
;(    ----------    -------     --------     -------       ------ ------     ---------------- )
;) ;customViaDefs

;customViaVariants(
;( viaVariantName customViaDefName ( (param value)...) )
;) ;customViaVariants

;bridgeVias(
;( viaDefName|viaVariantName -legWidth <float> -legPitch <float> -legDirection <vertical|horizontal> 
; -bridgeWidth <float|rangeValue> [-bridgeWidthParamName <string>] [-secondLegWidth <float>] 
; [-bridgePitch <float>] [-bridgePitchParamName <string>] [-cutSpacing (<float> < float>)] 
; [-cutRowsParamName <string>] [-cutColumnsParamName <string>] [-comment ["rule_id"] "string"] )
;) ;bridgeVias

;) ;viaDefs

;siteDefs(
;scalarSiteDefs(
;( siteDefName    siteDefType    width     height    symInX    symInY    symInR90 )
;(   -----------         ---------          ----        -----       ------        -----          --------- )
;) ;scalarSiteDefs

;arraySiteDefs(
;( siteDefName    siteDefType   ( ( siteRefName  dx   dy    orientation ) ... )   [symInX]   [symInY]  [symInR90] )
;(   -----------        -----------          -------------     --    --      ----------              -------        --------      ----------   )
;) ;arraySiteDefs

;) ;siteDefs

;constraintGroups (
;( groupName       [-operator op][-override true|false] //default operator value is precedence, default override value is false;
;( constraintName [layers/lpps]   contraintValue [params] [-isHard true|false] [-comment] )
;( constraintGroup referenceGroupName);
;-------------------------------------------------------- )
;) ;constraintGroups

