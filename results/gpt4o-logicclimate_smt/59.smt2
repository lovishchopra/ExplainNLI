(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun IsModestRecentWarming (BoundSet) Bool)
(declare-fun Produces (BoundSet BoundSet) Bool)
(declare-fun IsProducedEveryYear (BoundSet) Bool)
(declare-fun Creates (BoundSet BoundSet) Bool)
(declare-fun IsInNewEconomicAndHumanWelfareBenefits (BoundSet) Bool)
(declare-fun IsCreatedEachYear (BoundSet) Bool)
(assert (not (=> (and (exists ((a BoundSet)) (exists ((b BoundSet)) (and (IsModestRecentWarming a) (and (Produces a b) (IsProducedEveryYear b))))) (and (forall ((f BoundSet)) (forall ((g BoundSet)) (=> (IsModestRecentWarming f) (Creates f g)))) (forall ((j BoundSet)) (forall ((i BoundSet)) (forall ((h BoundSet)) (=> (Produces h i) (Creates h j))))))) (exists ((d BoundSet)) (exists ((a BoundSet)) (exists ((c BoundSet)) (and (IsModestRecentWarming a) (and (Creates a c) (and (IsInNewEconomicAndHumanWelfareBenefits d) (IsCreatedEachYear d))))))))))
(check-sat)
(get-model)