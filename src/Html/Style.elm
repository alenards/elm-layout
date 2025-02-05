module Html.Style exposing
    ( width, height, boxSizing, boxSizingBorderBox
    , position, positionStatic, positionRelative, positionAbsolute, positionFixed, positionSticky
    , top, right, bottom, left
    , display, displayBlock, displayInline, displayFlex, displayInlineFlex, displayGrid, displayInlineGrid, displayNone
    , flex, gap
    , flexDirection, flexDirectionRow, flexDirectionColumn
    , alignItems, alignItemsCenter, alignItemsFlexStart, alignItemsFlexEnd
    , justifyContent, justifyContentCenter, justifyContentFlexStart, justifyContentFlexEnd
    )

{-| This is a experimental module for writing css.

It emphasises simplicity over type safety and is compatible with both Elm-UI and Elm-CSS


# Sizing

@docs width, height, boxSizing, boxSizingBorderBox


# Position

@docs position, positionStatic, positionRelative, positionAbsolute, positionFixed, positionSticky

@docs top, right, bottom, left


# Display

@docs display, displayBlock, displayInline, displayFlex, displayInlineFlex, displayGrid, displayInlineGrid, displayNone


# Flexbox

@docs flex, gap

@docs flexDirection, flexDirectionRow, flexDirectionColumn
@docs alignItems, alignItemsCenter, alignItemsFlexStart, alignItemsFlexEnd
@docs justifyContent, justifyContentCenter, justifyContentFlexStart, justifyContentFlexEnd

-}

import Html exposing (Attribute)
import Html.Attributes



-----------------------------------------------------
-- ######  #### ######## #### ##    ##  ######
--##    ##  ##       ##   ##  ###   ## ##    ##
--##        ##      ##    ##  ####  ## ##
-- ######   ##     ##     ##  ## ## ## ##   ####
--      ##  ##    ##      ##  ##  #### ##    ##
--##    ##  ##   ##       ##  ##   ### ##    ##
-- ######  #### ######## #### ##    ##  ######
--https://patorjk.com/software/taag/#p=display&h=1&v=2&f=Banner3&t=Sizing%0A
-----------------------------------------------------


{-| The width CSS property sets an element's width. By default, it sets the width of the content area, but if box-sizing is set to border-box, it sets the width of the border area.

<https://developer.mozilla.org/en-US/docs/Web/CSS/width>

-}
width : String -> Attribute msg
width =
    Html.Attributes.style "width"


{-| The height CSS property specifies the height of an element. By default, the property defines the height of the content area. If box-sizing is set to border-box, however, it instead determines the height of the border area.

<https://developer.mozilla.org/en-US/docs/Web/CSS/height>

-}
height : String -> Attribute msg
height =
    Html.Attributes.style "height"


{-| The box-sizing CSS property sets how the total width and height of an element is calculated.

<https://developer.mozilla.org/en-US/docs/Web/CSS/box-sizing>

-}
boxSizing : String -> Attribute msg
boxSizing =
    Html.Attributes.style "box-sizing"


{-| The width and height properties include the content, padding, and border, but do not include the margin. Note that padding and border will be inside of the box. For example, .box {width: 350px; border: 10px solid black;} renders a box that is 350px wide, with the area for content being 330px wide. The content box can't be negative and is floored to 0, making it impossible to use border-box to make the element disappear.

<https://developer.mozilla.org/en-US/docs/Web/CSS/box-sizing>

-}
boxSizingBorderBox : Attribute msg
boxSizingBorderBox =
    boxSizing "border-box"



-----------------------------------------------------
--########   #######   ######  #### ######## ####  #######  ##    ##
--##     ## ##     ## ##    ##  ##     ##     ##  ##     ## ###   ##
--##     ## ##     ## ##        ##     ##     ##  ##     ## ####  ##
--########  ##     ##  ######   ##     ##     ##  ##     ## ## ## ##
--##        ##     ##       ##  ##     ##     ##  ##     ## ##  ####
--##        ##     ## ##    ##  ##     ##     ##  ##     ## ##   ###
--##         #######   ######  ####    ##    ####  #######  ##    ##
--https://patorjk.com/software/taag/#p=display&h=1&v=2&f=Banner3&t=position
-----------------------------------------------------


{-| The position CSS property sets how an element is positioned in a document. The top, right, bottom, and left properties determine the final location of positioned elements.

<https://developer.mozilla.org/en-US/docs/Web/CSS/position>

-}
position : String -> Attribute msg
position =
    Html.Attributes.style "position"


{-| The element is positioned according to the normal flow of the document. The top, right, bottom, left, and z-index properties have no effect. This is the default value.

<https://developer.mozilla.org/en-US/docs/Web/CSS/position>

-}
positionStatic : Attribute msg
positionStatic =
    position "static"


{-| The element is positioned according to the normal flow of the document, and then offset relative to itself based on the values of top, right, bottom, and left. The offset does not affect the position of any other elements; thus, the space given for the element in the page layout is the same as if position were static.

This value creates a new stacking context when the value of z-index is not auto. Its effect on table-\*-group, table-row, table-column, table-cell, and table-caption elements is undefined.

<https://developer.mozilla.org/en-US/docs/Web/CSS/position>

-}
positionRelative : Attribute msg
positionRelative =
    position "relative"


{-| The element is removed from the normal document flow, and no space is created for the element in the page layout. The element is positioned relative to its closest positioned ancestor (if any) or to the initial containing block. Its final position is determined by the values of top, right, bottom, and left.

This value creates a new stacking context when the value of z-index is not auto. The margins of absolutely positioned boxes do not collapse with other margins.

<https://developer.mozilla.org/en-US/docs/Web/CSS/position>

-}
positionAbsolute : Attribute msg
positionAbsolute =
    position "absolute"


{-| The element is removed from the normal document flow, and no space is created for the element in the page layout. The element is positioned relative to its initial containing block, which is the viewport in the case of visual media. Its final position is determined by the values of top, right, bottom, and left.

This value always creates a new stacking context. In printed documents, the element is placed in the same position on every page.

<https://developer.mozilla.org/en-US/docs/Web/CSS/position>

-}
positionFixed : Attribute msg
positionFixed =
    position "fixed"


{-| The element is positioned according to the normal flow of the document, and then offset relative to its nearest scrolling ancestor and containing block (nearest block-level ancestor), including table-related elements, based on the values of top, right, bottom, and left. The offset does not affect the position of any other elements.

This value always creates a new stacking context. Note that a sticky element "sticks" to its nearest ancestor that has a "scrolling mechanism" (created when overflow is hidden, scroll, auto, or overlay), even if that ancestor isn't the nearest actually scrolling ancestor.

<https://developer.mozilla.org/en-US/docs/Web/CSS/position>

-}
positionSticky : Attribute msg
positionSticky =
    position "sticky"



-----------------------------------------
-- Positioning
-----------------------------------------


{-| The top CSS property participates in specifying the vertical position of a positioned element. It has no effect on non-positioned elements.

<https://developer.mozilla.org/en-US/docs/Web/CSS/top>

-}
top : String -> Attribute msg
top =
    Html.Attributes.style "top"


{-| The right CSS property participates in specifying the horizontal position of a positioned element. It has no effect on non-positioned elements.

<https://developer.mozilla.org/en-US/docs/Web/CSS/top>

-}
right : String -> Attribute msg
right =
    Html.Attributes.style "right"


{-| The bottom CSS property participates in setting the vertical position of a positioned element. It has no effect on non-positioned elements.

<https://developer.mozilla.org/en-US/docs/Web/CSS/bottom>

-}
bottom : String -> Attribute msg
bottom =
    Html.Attributes.style "bottom"


{-| The left CSS property participates in specifying the horizontal position of a positioned element. It has no effect on non-positioned elements.

<https://developer.mozilla.org/en-US/docs/Web/CSS/left>

-}
left : String -> Attribute msg
left =
    Html.Attributes.style "left"



-----------------------------------------
--########  ####  ######  ########  ##          ###    ##    ##
--##     ##  ##  ##    ## ##     ## ##         ## ##    ##  ##
--##     ##  ##  ##       ##     ## ##        ##   ##    ####
--##     ##  ##   ######  ########  ##       ##     ##    ##
--##     ##  ##        ## ##        ##       #########    ##
--##     ##  ##  ##    ## ##        ##       ##     ##    ##
--########  ####  ######  ##        ######## ##     ##    ##
--https://patorjk.com/software/taag/#p=display&h=1&v=2&f=Banner3&t=Display
-----------------------------------------


{-| The display CSS property sets whether an element is treated as a block or inline box and the layout used for its children, such as flow layout, grid or flex.

<https://developer.mozilla.org/en-US/docs/Web/CSS/display>

-}
display : String -> Attribute msg
display =
    Html.Attributes.style "display"


{-| The element generates a block box, generating line breaks both before and after the element when in the normal flow.

<https://developer.mozilla.org/en-US/docs/Web/CSS/display>

-}
displayBlock : Attribute msg
displayBlock =
    display "block"


{-| The element generates one or more inline boxes that do not generate line breaks before or after themselves. In normal flow, the next element will be on the same line if there is space.

<https://developer.mozilla.org/en-US/docs/Web/CSS/display>

-}
displayInline : Attribute msg
displayInline =
    display "inline"


{-| The element behaves like a block-level element and lays out its content according to the flexbox model.

<https://developer.mozilla.org/en-US/docs/Web/CSS/display>

-}
displayFlex : Attribute msg
displayFlex =
    display "flex"


{-| <https://developer.mozilla.org/en-US/docs/Web/CSS/display>
-}
displayInlineFlex : Attribute msg
displayInlineFlex =
    display "inline-flex"


{-| The element behaves like a block-level element and lays out its content according to the grid model.

<https://developer.mozilla.org/en-US/docs/Web/CSS/display>

-}
displayGrid : Attribute msg
displayGrid =
    display "grid"


{-| <https://developer.mozilla.org/en-US/docs/Web/CSS/display>
-}
displayInlineGrid : Attribute msg
displayInlineGrid =
    display "inline-grid"


{-| Turns off the display of an element so that it has no effect on layout (the document is rendered as though the element did not exist). All descendant elements also have their display turned off. To have an element take up the space that it would normally take, but without actually rendering anything, use the visibility property instead.

<https://developer.mozilla.org/en-US/docs/Web/CSS/display>

-}
displayNone : Attribute msg
displayNone =
    display "none"



------------------------------------------------
--######## ##       ######## ##     ## ########   #######  ##     ##
--##       ##       ##        ##   ##  ##     ## ##     ##  ##   ##
--##       ##       ##         ## ##   ##     ## ##     ##   ## ##
--######   ##       ######      ###    ########  ##     ##    ###
--##       ##       ##         ## ##   ##     ## ##     ##   ## ##
--##       ##       ##        ##   ##  ##     ## ##     ##  ##   ##
--##       ######## ######## ##     ## ########   #######  ##     ##
------------------------------------------------


{-| The flex CSS shorthand property sets how a flex item will grow or shrink to fit the space available in its flex container.

<https://developer.mozilla.org/en-US/docs/Web/CSS/flex>

-}
flex : String -> Attribute msg
flex =
    Html.Attributes.style "flex"


{-| The gap CSS shorthand property sets the gaps (gutters) between rows and columns.

<https://developer.mozilla.org/en-US/docs/Web/CSS/gap>

-}
gap : String -> Attribute msg
gap =
    Html.Attributes.style "gap"



------------------------------------------------
-- flex-direction
------------------------------------------------


{-| The flex-direction CSS property sets how flex items are placed in the flex container defining the main axis and the direction (normal or reversed).

<https://developer.mozilla.org/en-US/docs/Web/CSS/flex-direction>

-}
flexDirection : String -> Attribute msg
flexDirection =
    Html.Attributes.style "flex-direction"


{-| The flex container's main-axis is defined to be the same as the text direction. The main-start and main-end points are the same as the content direction.

<https://developer.mozilla.org/en-US/docs/Web/CSS/flex-direction>

-}
flexDirectionRow : Attribute msg
flexDirectionRow =
    flexDirection "row"


{-| The flex container's main-axis is the same as the block-axis. The main-start and main-end points are the same as the before and after points of the writing-mode.

<https://developer.mozilla.org/en-US/docs/Web/CSS/flex-direction>

-}
flexDirectionColumn : Attribute msg
flexDirectionColumn =
    flexDirection "column"



------------------------------------------------
-- align-items
------------------------------------------------


{-| The CSS align-items property sets the align-self value on all direct children as a group. In Flexbox, it controls the alignment of items on the Cross Axis. In Grid Layout, it controls the alignment of items on the Block Axis within their grid area.

<https://developer.mozilla.org/en-US/docs/Web/CSS/align-items>

-}
alignItems : String -> Attribute msg
alignItems =
    Html.Attributes.style "align-items"


{-| The flex items' margin boxes are centered within the line on the cross-axis. If the cross-size of an item is larger than the flex container, it will overflow equally in both directions.

<https://developer.mozilla.org/en-US/docs/Web/CSS/align-items>

-}
alignItemsCenter : Attribute msg
alignItemsCenter =
    alignItems "center"


{-| Used in flex layout only, aligns the flex items flush against the flex container's main-start or cross-start side.

<https://developer.mozilla.org/en-US/docs/Web/CSS/align-items>

-}
alignItemsFlexStart : Attribute msg
alignItemsFlexStart =
    alignItems "flex-start"


{-| Used in flex layout only, aligns the flex items flush against the flex container's main-end or cross-end side.

<https://developer.mozilla.org/en-US/docs/Web/CSS/align-items>

-}
alignItemsFlexEnd : Attribute msg
alignItemsFlexEnd =
    alignItems "flex-end"



------------------------------------
--justify-content
------------------------------------


{-| The CSS justify-content property defines how the browser distributes space between and around content items along the main-axis of a flex container, and the inline axis of a grid container.

<https://developer.mozilla.org/en-US/docs/Web/CSS/justify-content>

-}
justifyContent : String -> Attribute msg
justifyContent =
    Html.Attributes.style "justify-content"


{-| The items are packed flush to each other toward the center of the alignment container along the main axis.

<https://developer.mozilla.org/en-US/docs/Web/CSS/justify-content>

-}
justifyContentCenter : Attribute msg
justifyContentCenter =
    justifyContent "center"


{-| The items are packed flush to each other toward the edge of the alignment container depending on the flex container's main-start side. This only applies to flex layout items. For items that are not children of a flex container, this value is treated like start.

<https://developer.mozilla.org/en-US/docs/Web/CSS/justify-content>

-}
justifyContentFlexStart : Attribute msg
justifyContentFlexStart =
    justifyContent "flex-start"


{-| The items are packed flush to each other toward the edge of the alignment container depending on the flex container's main-end side. This only applies to flex layout items. For items that are not children of a flex container, this value is treated like end.

<https://developer.mozilla.org/en-US/docs/Web/CSS/justify-content>

-}
justifyContentFlexEnd : Attribute msg
justifyContentFlexEnd =
    justifyContent "flex-end"
