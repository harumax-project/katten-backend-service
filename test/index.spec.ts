/* eslint-disable @typescript-eslint/ban-ts-comment */
import { describe } from 'mocha'
import * as chai from 'chai'

const expect = chai.expect


describe('sanitary check', () => {
  it('should pass sanitary test', () => {
    expect(true).to.eq(true)
  })
})
