(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(declare-fun IsDirty (BoundSet) Bool)
(declare-fun IsInsectBorne (BoundSet) Bool)
(declare-fun ( (Bool) Bool)
(declare-fun IsAProblemFor (BoundSet) Bool)
(declare-fun IsEnvironmentalThreat (BoundSet) Bool)
(declare-fun IsNotTopThreat (BoundSet) Bool)
(assert (not (=> (and (exists ((a BoundSet)) (exists ((c BoundSet)) (exists ((d BoundSet)) (and (exists ((b BoundSet)) (( (and (IsDirty a) (and (IsDirty b) (IsInsectBorne c))))) (IsAProblemFor d))))) (and (forall ((h BoundSet)) (forall ((g BoundSet)) (=> (IsDirty g) (IsEnvironmentalThreat h)))) (forall ((i BoundSet)) (forall ((j BoundSet)) (=> (IsAProblemFor i) (IsEnvironmentalThreat j)))))) (exists ((e BoundSet)) (exists ((f BoundSet)) (and (IsNotTopThreat e) (IsEnvironmentalThreat f)))))))
(check-sat)
(get-model)