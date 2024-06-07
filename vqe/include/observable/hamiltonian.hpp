#ifndef HAMIL
#define HAMIL
#include <vector>
#include <string>
#include "observable/fermionic_operator.hpp"
#include "observable/pauli_operator.hpp"
#include "transform/transform.hpp"
#include "utils.hpp" 
#include "state.hpp" 


namespace NWQSim {
  namespace VQE {
    typedef std::unordered_map<PauliOperator, ValType, PauliHash> ExpectationMap;
    class Hamiltonian {
      protected:
        MolecularEnvironment env;
        std::vector<std::vector<FermionOperator> > fermi_operators;
        std::vector<std::vector<PauliOperator> > pauli_operators;
      
      public:
        Hamiltonian(std::string input_path, IdxType n_particles, 
                    Transformer transform = getJordanWignerTransform);
        Hamiltonian(MolecularEnvironment _env,
                    const std::vector<std::vector<FermionOperator> > _fermion_operators, 
                    Transformer transform = getJordanWignerTransform): env(_env), fermi_operators(_fermion_operators) {
          transform(env, fermi_operators, pauli_operators, false);
        }
        ValType expectation(const ExpectationMap& expectations) const {
          ValType expect = env.constant;
          for (auto& pauli_list: pauli_operators) {
            for (auto& pauli: pauli_list) {
              if (expectations.find(pauli) == expectations.end()) {
                throw std::runtime_error("Pauli expectation not provided");
              }
              expect += pauli.getCoeff().real() * expectations.at(pauli);
            }
          }
          return expect;
        }
        const MolecularEnvironment& getEnv () const {return env;}
        const std::vector<std::vector<PauliOperator> >& getPauliOperators() const {return pauli_operators;};


    };
  };// namespace vqe
};// namespace nwqsim
#endif