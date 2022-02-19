//
//  VZMacAuxiliaryStorage+Private.h
//  MacVM
//
//  Created by jim on 19/02/2022.
//

#import <Virtualization/Virtualization.h>

NS_ASSUME_NONNULL_BEGIN

@interface VZMacAuxiliaryStorage (Private)

- (BOOL)_allNVRAMVariablesWithError:(NSError **)error;
- (BOOL) _setValue:(id)arg1 forNVRAMVariableNamed:(id)arg2 error:(NSError **)error;
- (BOOL) _removeNVRAMVariableNamed:(id)arg1 error:(NSError **)error;

@end

NS_ASSUME_NONNULL_END
