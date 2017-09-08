//
//  Y_StockChartGlobalVariable.m
//  BTC-Kline
//
//  Created by yate1996 on 16/4/30.
//  Copyright © 2016年 yate1996. All rights reserved.
//
#import "Y_StockChartGlobalVariable.h"

/**
 *  K线图的宽度，默认20
 */
static CGFloat Y_StockChartKLineWidth = 2;

/**
 *  K线图的间隔，默认1
 */
static CGFloat Y_StockChartKLineGap = 1;


/**
 *  MainView的高度占比,默认为0.5
 */
static CGFloat Y_StockChartKLineMainViewRatio = 0.5;

/**
 *  VolumeView的高度占比,默认为0.5
 */
static CGFloat Y_StockChartKLineVolumeViewRatio = 0.2;

/**
 *  Stock bar chart view style
 */
static Y_StockChartViewStyle Y_CurrentStockChartViewStyle = Y_StockChartViewWithkLine;

/**
 *  是否为EMA线
 */
static Y_StockChartTargetLineStatus Y_StockChartKLineIsEMALine = Y_StockChartTargetLineStatusMA;

/**
 *  是否为BOLL线
 */
static Y_StockChartTargetLineStatus Y_StockChartKLineIsBOLLLine = Y_StockChartTargetLineStatusBOLL;


@implementation Y_StockChartGlobalVariable

/**
 *  K线图的宽度，默认20
 */
+(CGFloat)kLineWidth
{
    return Y_StockChartKLineWidth;
}
+(void)setkLineWith:(CGFloat)kLineWidth
{
    if (kLineWidth > Y_StockChartKLineMaxWidth) {
        kLineWidth = Y_StockChartKLineMaxWidth;
    }else if (kLineWidth < Y_StockChartKLineMinWidth){
        kLineWidth = Y_StockChartKLineMinWidth;
    }
    Y_StockChartKLineWidth = kLineWidth;
}


/**
 *  K线图的间隔，默认1
 */
+(CGFloat)kLineGap
{
    return Y_StockChartKLineGap;
}

+(void)setkLineGap:(CGFloat)kLineGap
{
    Y_StockChartKLineGap = kLineGap;
}

+ (Y_StockChartViewStyle)getCurrentStockCharViewStyle
{
    return Y_CurrentStockChartViewStyle;
}

+ (void)setCurrentStockCharViewStyle:(Y_StockChartViewStyle)style
{
    Y_CurrentStockChartViewStyle = style;
    
    switch (style) {
        case Y_StockChartViewWithkLine:
            Y_StockChartKLineMainViewRatio = 0.98;
            Y_StockChartKLineWidth = 6;
            Y_StockChartKLineGap = 2;
            Y_StockChartKLineVolumeViewRatio = 0;
            break;
        case Y_StockChartViewWithkLinekVolume:
            Y_StockChartKLineMainViewRatio = 0.65;
            Y_StockChartKLineWidth = 3;
            Y_StockChartKLineGap = 2;
            Y_StockChartKLineVolumeViewRatio = 0.28;
            break;
        case Y_StockChartViewWithkLinekAccessory:
            Y_StockChartKLineMainViewRatio = 0.65;
            Y_StockChartKLineVolumeViewRatio = 0;
            Y_StockChartKLineGap = 2;
            Y_StockChartKLineWidth = 3;
            break;
        case Y_StockChartViewWithkLinekVolumekAccessory:
            Y_StockChartKLineMainViewRatio = 0.5;
            Y_StockChartKLineWidth = 2;
            Y_StockChartKLineVolumeViewRatio = 0.2;
            Y_StockChartKLineGap = 1;
            break;
    }
}

/**
 *  MainView的高度占比,默认为0.5
 */
+ (CGFloat)kLineMainViewRatio
{
    return Y_StockChartKLineMainViewRatio;
}

+ (void)setkLineMainViewRatio:(CGFloat)ratio
{
    Y_StockChartKLineMainViewRatio = ratio;
}

/**
 *  VolumeView的高度占比,默认为0.2
 */
+ (CGFloat)kLineVolumeViewRatio
{
    return Y_StockChartKLineVolumeViewRatio;
}
+ (void)setkLineVolumeViewRatio:(CGFloat)ratio
{
    Y_StockChartKLineVolumeViewRatio = ratio;
}


/**
 *  isEMA线
 */

+ (CGFloat)isEMALine
{
    return Y_StockChartKLineIsEMALine;
}
+ (void)setisEMALine:(Y_StockChartTargetLineStatus)type
{
    Y_StockChartKLineIsEMALine = type;
}

/**
  *  isBOLL线
  */
+ (CGFloat)isBOLLLine {
    return Y_StockChartKLineIsBOLLLine;
}
+ (void)setisBOLLLine:(Y_StockChartTargetLineStatus)type{
    Y_StockChartKLineIsBOLLLine = type;
}

@end
