{-# LANGUAGE CPP, TypeFamilies #-}
-- -----------------------------------------------------------------------------
-- | This is the top-level module in the LLVM code generator.
--

module MuCodeGen ( muCodeGen ) where

#include "HsVersions.h"

import Cmm

import DynFlags
import UniqSupply
import qualified Stream

import System.IO


-- -----------------------------------------------------------------------------
-- | Top-level of the Mu Code generator
--
muCodeGen :: DynFlags -> Handle -> UniqSupply
          -> Stream.Stream IO RawCmmGroup ()
          -> IO ()
muCodeGen _ _ _ _ = print "Hello, Mu"
-- muCodeGen dflags _ _ _
--   = do -- Pass header
--        showPass dflags "Mu CodeGen"
--        print "Hello, Mu"
