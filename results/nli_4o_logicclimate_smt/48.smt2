(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(declare-fun IsFirstCoat (BoundSet) Bool)
(declare-fun IsWhitePaint (BoundSet) Bool)
(declare-fun DoesWork (BoundSet) Bool)
(declare-fun IsRedWall (BoundSet) Bool)
(declare-fun ( (Bool) Bool)
(declare-fun Conceals (BoundSet BoundSet) Bool)
(declare-fun HasDiminishingEffects (BoundSet) Bool)
(declare-fun IsAdded (BoundSet BoundSet) Bool)
(assert (not (=> (and (exists ((a BoundSet)) (exists ((c BoundSet)) (and (exists ((b BoundSet)) (( (and (IsFirstCoat a) (and (IsWhitePaint a) (and (DoesWork a) (IsRedWall c)))))) (Conceals b c)))) (forall ((h BoundSet)) (forall ((f BoundSet)) (forall ((g BoundSet)) (=> (Conceals f g) (HasDiminishingEffects h)))))) (exists ((e BoundSet)) (exists ((d BoundSet)) (and (IsAdded d e) (HasDiminishingEffects e)))))))
(check-sat)
(get-model)