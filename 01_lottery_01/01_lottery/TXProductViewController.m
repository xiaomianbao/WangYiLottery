//
//  TXProductViewController.m
//  01_lottery
//
//  Created by 李伟豹 on 15/4/6.
//  Copyright (c) 2015年 李伟豹. All rights reserved.
//

#import "TXProductViewController.h"
#import "TXProduct.h"
#import "TXProductViewCell.h"

@interface TXProductViewController ()

@property (nonatomic ,strong) NSArray * products ;
@end

static NSString * const reuseIdentifier = @"Cell";
@implementation TXProductViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    
    
   
    [self.collectionView registerClass:[TXProductViewCell class] forCellWithReuseIdentifier:reuseIdentifier];
    
    self.collectionView.backgroundColor = [UIColor whiteColor];
    
    self.collectionView.contentSize = CGSizeMake(320, 100);
    
   }


#pragma mark - 懒加载
- (NSArray *)products
{
    if (_products ==nil) {
        
        
        NSString *path = [[NSBundle mainBundle] pathForResource:@"products.json" ofType:nil];
        NSData *data = [NSData dataWithContentsOfFile:path];
       NSArray *productArray = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:nil];
        
        NSMutableArray *tempArray = [NSMutableArray array];
        for (NSDictionary *dict in productArray) {
            
            TXProduct *product = [TXProduct productWithDict:dict];
            
            [tempArray addObject:product];
            
        }
        _products = tempArray ;
        
    }
    
    return _products ;
}


#pragma mark <UICollectionViewDataSource>


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {

    
    return self.products.count ;
    
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    
    TXProductViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    
    cell.product = self.products[indexPath.item];
    
    return cell;
}

- (instancetype)init
{
    
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init]
    ;
    layout.itemSize = CGSizeMake(80, 80);
    layout.minimumInteritemSpacing = 0 ;
    layout.minimumLineSpacing = 20 ;
    
    layout.sectionInset = UIEdgeInsetsMake(20, 0, 0, 0);
    return [super initWithCollectionViewLayout:layout];
}

#pragma mark <UICollectionViewDelegate>

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
   TXProduct *product = self.products[indexPath.item];
    NSLog(@"%@",product.title);
}

@end
